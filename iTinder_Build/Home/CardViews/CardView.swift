//
//  CardView.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/22.
//

import SwiftUI

struct CardView: View {
    @State var person: Person
    @Binding var inFullScreenMode: Bool
    @Namespace var imageNamespace
    
    var screenCutoff = (UIScreen.main.bounds.width / 2) * 0.8
    
    var body: some View {
        GeometryReader { geo in
            if inFullScreenMode {
                FullScreenCardView(
                    person: person,
                    inFullScreenMode: $inFullScreenMode,
                    imageNameSpace: imageNamespace
                )
                .animation(.easeOut(duration: 0.2))
            } else {
                CardImageScroller(person: person, inFullScreenMode: $inFullScreenMode)
                    .animation(.easeOut(duration: 0.2))
                    .frame(width: geo.size.width - 20, height: geo.size.height)
                    .padding(.leading, 10)
                    .matchedGeometryEffect(id: "image\(person.id)", in: imageNamespace)
                    .offset(x: person.xPosition, y: person.yPosition)
                    .rotationEffect(.degrees(person.degree))
                    .gesture(
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.default) {
                                    person.xPosition = value.translation.width
                                    person.yPosition = value.translation.height
                                    withAnimation {
                                        person.degree = Double(value.translation.width / 25) * -1
                                    }
                                }
                            })
                            .onEnded({ value in
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 10, initialVelocity: 0)) {
                                    let width = value.translation.width
                                    
                                    if width >= 0 && width <= screenCutoff {
                                        person.xPosition = 0
                                        person.yPosition = 0
                                        person.degree = 0
                                    } else if width <= -1 && width >= -screenCutoff {
                                        person.xPosition = 0
                                        person.yPosition = 0
                                        person.degree = 0
                                    } else if width > screenCutoff {
                                        // Swipe right (like)
                                        person.xPosition = 500
                                        person.degree = 12
                                    } else if width < -screenCutoff {
                                        // Swipe left (pass)
                                        person.xPosition = -500
                                        person.degree = -12
                                    }
                                }
                            })
                    )
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.example, inFullScreenMode: .constant(false))
    }
}

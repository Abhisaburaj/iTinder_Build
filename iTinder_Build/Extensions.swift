//
//  Extensions.swift
//  iTinder_Build
//
//  Created by Stanley Pan on 2021/09/20.
//

import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

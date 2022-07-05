//
//  CenterModifier.swift
//  Africa
//
//  Created by John Michael Baldonado on 7/4/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

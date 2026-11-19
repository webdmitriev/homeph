//
//  Button.ext.swift
//  homeph
//
//  Created by Олег Дмитриев on 19.11.2026.
//

/*
 Button("Get Started") { }
     .buttonStyle(.app())

 Button("Skip") { }
     .buttonStyle(.app(background: .clear, textColor: .blueGray))
 */

import SwiftUI

struct AppButtonStyle: ButtonStyle {
    var background: Color = .appGreen
    var textColor: Color = .white

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .bold))
            .foregroundStyle(textColor)
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(background, in: RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

extension ButtonStyle where Self == AppButtonStyle {
    static func app(background: Color = .appGreen, textColor: Color = .white) -> AppButtonStyle {
        AppButtonStyle(background: background, textColor: textColor)
    }
}

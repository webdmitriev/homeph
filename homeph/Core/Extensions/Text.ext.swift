//
//  Text.ext.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

extension Text {
    func onboardingTitle() -> some View {
        self
            .font(.system(size: 32, weight: .bold))
            .multilineTextAlignment(.center)
            .foregroundStyle(.appBlack)
    }
    
    func onboardingSubTitle() -> some View {
        self
            .font(.system(size: 17, weight: .regular))
            .multilineTextAlignment(.center)
            .foregroundStyle(.appGray)
    }
}

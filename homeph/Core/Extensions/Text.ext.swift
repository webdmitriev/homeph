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
    
    func headerTitle() -> some View {
        self
            .font(.system(size: 28, weight: .bold))
            .foregroundStyle(.appBlack)
    }
    
    // MARK: Card
    func cardTitle() -> some View {
        self
            .font(.system(size: 22, weight: .bold))
            .foregroundStyle(.appBlack)
            .frame(maxWidth: .infinity, minHeight: 58, alignment: .topLeading)
    }

    func cardPrice() -> some View {
        self
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.appGreen)
    }
    
    func cardPricePerText() -> some View {
        self
            .font(.system(size: 14, weight: .medium))
            .foregroundStyle(.appGray)
    }
    
    func cardRating() -> some View {
        self
            .font(.system(size: 22, weight: .bold))
            .foregroundStyle(.appYellow)
    }
    
    func cardAddress() -> some View {
        self
            .font(.system(size: 18, weight: .medium))
            .foregroundStyle(.appGray)
    }
}

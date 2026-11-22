//
//  Label.ext.swift
//  homeph
//
//  Created by Олег Дмитриев on 22.11.2026.
//

import SwiftUI

extension Label where Title == Text, Icon == Image {
    func cardRating() -> some View {
        self
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.appYellow)
    }
    
    func cardAddress() -> some View {
        self
            .font(.system(size: 13, weight: .medium))
            .lineLimit(1)
            .foregroundStyle(.appBlack.opacity(0.9))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

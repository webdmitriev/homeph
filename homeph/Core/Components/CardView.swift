//
//  CardView.swift
//  homeph
//
//  Created by Олег Дмитриев on 22.11.2026.
//

import SwiftUI

enum CardStyle {
    case short
    case bigger
}

struct CardView: View {
    var apartment: Apartment
    var style: CardStyle = .short
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                Image(apartment.thumbnail)
                    .resizable()
                    .scaledToFill()
            }
            .frame(height: style == .short ? 140 : 200)
            .clipShape(RoundedRectangle(cornerRadius: style == .short ? 0 : AppConstants.Layout.brsCard))
            .clipped()
            .overlay(alignment: .topTrailing, content: {
                Button {
                    //onFavourite(apartment.id)
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 36, height: 36)
                            .foregroundStyle(.white.opacity(0.8))
                        
                        Image(systemName: "heart.fill")
                            .font(.system(size: 18))
                            .foregroundStyle(.appBlack.opacity(0.8))
                    }
                }
                .offset(x: -8, y: 8)
            })
            
            VStack(spacing: 8) {
                HStack(spacing: 8) {
                    HStack(alignment: .bottom, spacing: 2) {
                        Text("$\(apartment.price)")
                            .cardPrice()
                        
                        Text("/ night")
                            .cardPricePerText()
                    }
                    
                    Spacer()
                    
                    Label(String(format: "%.1f", locale: Locale(identifier: "en_US_POSIX"), apartment.rating), systemImage: "star.fill")
                        .cardRating()
                }
                .frame(maxWidth: .infinity)
                
                Text(apartment.title)
                    .cardTitle(isFixHeight: style == .short)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2)
                
                Label("\(apartment.address)", systemImage: "mappin.and.ellipse")
                    .cardAddress()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, style == .short ? AppConstants.Layout.offsetPage : 0)
            .padding(.vertical, 12)
        }
        .frame(maxWidth: style == .short ? 280 : .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: AppConstants.Layout.brsCard))
        .shadow(color: .black.opacity(style == .short ? 0.08 : 0), radius: 8, x: 0, y: 4)
    }
}

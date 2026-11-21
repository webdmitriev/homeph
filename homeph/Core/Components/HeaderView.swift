//
//  HeaderView.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var action: (() -> Void)? = nil
    
    var body: some View {
        HStack(spacing: 12) {
            Text(title)
                .headerTitle()
                .lineLimit(2)
            
            Spacer()
            
            Button {
                action?()
            } label: {
                ZStack {
                    Image("icon-notification")
                        .resizable()
                        .frame(width: 36, height: 36)
                        .scaledToFit()
                    
                    Circle()
                        .frame(width: 9, height: 9)
                        .foregroundColor(.appRed)
                        .offset(x: 6, y: -11)
                        .overlay {
                            Circle().stroke(.white, lineWidth: 3)
                                .offset(x: 6, y: -11)
                        }
                }
            }

        }
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}

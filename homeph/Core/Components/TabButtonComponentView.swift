//
//  TabButtonComponentView.swift
//  homeph
//
//  Created by Олег Дмитриев on 20.11.2026.
//

import SwiftUI

struct TabButtonComponentView: View {
    var imageIcon: String
    var title: String
    var active: Bool
    var currentPage: () -> ()
    
    var body: some View {
        Button {
            currentPage()
        } label: {
            VStack(spacing: 3) {
                Image(imageIcon)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(active ? .appGreen : .appGray)

                Text(title)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundStyle(active ? .appGreen : .appGray)
            }
        }

    }
}

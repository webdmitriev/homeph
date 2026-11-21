//
//  SearchButtonView.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import SwiftUI

struct SearchButtonView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        Button {
            path.append("search")
        } label: {
            HStack(spacing: 10) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.appBlack.opacity(0.6))

                Text("Search location")
                    .foregroundStyle(.appGray)

                Spacer()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 12)
            .background(.white, in: RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
            .overlay {
                RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault)
                    .stroke(.appGray.opacity(0.8), lineWidth: 1)
            }
        }
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}

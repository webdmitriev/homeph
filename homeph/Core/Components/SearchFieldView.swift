//
//  SearchView.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import SwiftUI

struct SearchFieldView: View {
    @Binding var searchText: String
    var isFocused: FocusState<Bool>.Binding
    let onSearch: (String) -> Void
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.secondary)
                
                TextField("Search location", text: $searchText)
                    .focused(isFocused)
                    .onSubmit { onSearch(searchText) }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 12)
            .background(.white, in: RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault))
            .overlay {
                RoundedRectangle(cornerRadius: AppConstants.Layout.brsDefault)
                    .stroke(.gray.opacity(0.3), lineWidth: 1)
                    .shadow(color: .black.opacity(0.06), radius: 6, x: 0, y: 2)
            }
        }
        .padding(.horizontal, AppConstants.Layout.offsetPage)
    }
}

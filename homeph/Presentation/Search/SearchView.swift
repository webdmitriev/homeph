//
//  SearchPageView.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @FocusState private var isFieldFocused: Bool

    let onSubmit: (String) -> Void

    var body: some View {
        VStack {
            SearchFieldView(searchText: $searchText, isFocused: $isFieldFocused) { str in
                print(str)
            }

            Spacer()
        }
        .navigationTitle("Search location")
        .onAppear {
            isFieldFocused = true
        }
    }
}

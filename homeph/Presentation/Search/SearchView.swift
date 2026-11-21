//
//  SearchPageView.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var vm = SearchViewModel()
    @FocusState private var isFieldFocused: Bool

    let onSubmit: (String) -> Void

    var body: some View {
        VStack {
            SearchFieldView(searchText: $searchText, isFocused: $isFieldFocused) { str in
                onSubmit(str)
            }
            
            if searchText.isEmpty {
                ContentUnavailableView(
                    "Search location",
                    systemImage: "magnifyingglass",
                    description: Text("Введите название или адрес, например «Boracay»")
                )
            } else if vm.searchApartments.isEmpty {
                ContentUnavailableView(
                    "Ничего не найдено",
                    systemImage: "house.slash",
                    description: Text("Попробуйте изменить запрос")
                )
            } else {
                ForEach(vm.searchApartments) { item in
                    Text(item.title)
                }
            }

            Spacer()
        }
        .navigationTitle("Search location")
        .onAppear {
            isFieldFocused = true
        }
        .task {
            await vm.allApartments()
        }
        .onChange(of: searchText) { _, newValue in
            vm.search(query: newValue)
        }
    }
}

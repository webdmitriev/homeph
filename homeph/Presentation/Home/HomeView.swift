//
//  HomeView.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    @State private var vm = HomeViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack(spacing: 20) {
                    HeaderView(title: "Find you best real estate now")
                    
                    SearchButtonView(path: $path)
                    
                    ForEach(vm.apartments) { item in
                        Text(item.title)
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(.appBlack)
                    }

                    Spacer()
                }
                .navigationDestination(for: String.self) { value in
                    SearchView { query in
                        path.append(query)
                    }
                }
            }
        }
        .task {
            await vm.allApartments()
        }
    }
}

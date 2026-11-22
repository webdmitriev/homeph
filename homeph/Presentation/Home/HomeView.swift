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
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 16) {
                            ForEach(vm.apartments) { item in
                                CardView(apartment: item, style: .short)
                            }
                        }
                        .padding(.horizontal, AppConstants.Layout.offsetPage)
                        .padding(.vertical, 16)
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

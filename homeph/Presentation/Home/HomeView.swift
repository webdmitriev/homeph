//
//  HomeView.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack(spacing: 16) {
                    HeaderView(title: "Find you best real estate now")
                    
                    SearchButtonView(path: $path)

                    Spacer()
                }
                .navigationDestination(for: String.self) { value in
                    SearchView { query in
                        path.append(query)
                    }
                }
            }
        }
    }
}

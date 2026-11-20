//
//  TabPagesView.swift
//  homeph
//
//  Created by Олег Дмитриев on 19.11.2026.
//

import SwiftUI

enum TabPages: Hashable {
    case home
    case discover
    case favourite
    case messages
    case profile
}

struct TabPagesView: View {
    @State var selectionPage: TabPages = .home
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    private var isRegularScreen: Bool {
        UIDevice.current.userInterfaceIdiom == .phone && horizontalSizeClass == .regular
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                HomeView()
                    .mainTabBar(visible: isRegularScreen)
                    .tag(TabPages.home)
                    .tabItem { Label("Home", image: "tabbar-home") }
            }
        }
    }
}

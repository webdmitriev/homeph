//
//  TabPagesView.swift
//  homeph
//
//  Created by Олег Дмитриев on 19.11.2026.
//

import SwiftUI

enum TabPages: String, CaseIterable, Identifiable, Hashable {
    case home, discover, favourite, messages, profile
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .home:
            "Home"
        case .discover:
            "Discover"
        case .favourite:
            "Favourite"
        case .messages:
            "Messages"
        case .profile:
            "Profile"
        }
    }
    
    var icon: String {
        "tabbar-\(rawValue)"
    }
}

struct TabPagesView: View {
    @State private var selectionPage: TabPages = .home
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    private var isRegularScreen: Bool {
        UIDevice.current.userInterfaceIdiom == .phone && horizontalSizeClass == .regular
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                ForEach(TabPages.allCases) { page in
                    content(for: page)
                        .mainTabBar(visible: isRegularScreen)
                        .tag(page)
                        .tabItem { Label(page.title, image: page.icon) }
                }
            }

            if !isRegularScreen {
                HStack(spacing: 8) {
                    ForEach(TabPages.allCases) { page in
                        TabButtonComponentView(
                            imageIcon: page.icon,
                            title: page.title,
                            active: selectionPage == page
                        ) {
                            selectionPage = page
                        }
                    }
                }
            }
        }
    }

    @ViewBuilder
    private func content(for page: TabPages) -> some View {
        switch page {
        case .home: HomeView()
        case .discover: DiscoverView()
        case .favourite: FavouriteView()
        case .messages: MessagesView()
        case .profile: ProfileView()
        }
    }
}

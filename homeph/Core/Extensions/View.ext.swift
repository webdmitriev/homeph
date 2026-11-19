//
//  View.ext.swift
//  homeph
//
//  Created by Олег Дмитриев on 19.11.2026.
//

import SwiftUI

extension View {
    func mainTabBar(visible: Bool) -> some View {
        self.toolbar(visible ? .visible : .hidden, for: .tabBar)
    }
}

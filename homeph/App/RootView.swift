//
//  RootView.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

enum AppFlow {
    case splash
    case onboarding
    case main
}

struct RootView: View {
    @State private var flow: AppFlow = .splash

    var body: some View {
        Group {
            switch flow {
            case .splash:
                SplashView {
                    flow = UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
                        ? .main
                        : .onboarding
                }
            case .onboarding:
                OnboardingView {
                    UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
                    flow = .main
                }
            case .main:
                TabPagesView()
            }
        }
        .animation(.easeInOut(duration: 0.3), value: flow)
    }
}

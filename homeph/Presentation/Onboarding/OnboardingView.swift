//
//  OnboardingView.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

struct OnboardingView: View {
    let onComplete: () -> Void
    let vm = OnboardingViewModel()

    @State private var currentPage = 0

    private var isLastPage: Bool {
        currentPage == vm.onboardingItems.count - 1
    }

    private var currentItem: OnboardingPage? {
        guard vm.onboardingItems.indices.contains(currentPage) else { return nil }
        return vm.onboardingItems[currentPage]
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            // MARK: Фон — картинка на весь экран
            TabView(selection: $currentPage) {
                ForEach(Array(vm.onboardingItems.enumerated()), id: \.element.id) { index, page in
                    Image(page.image)
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()

            // MARK: Общий контент поверх фона
            VStack(spacing: 16) {
                // Точки-индикатор
                HStack(spacing: 8) {
                    ForEach(0..<vm.onboardingItems.count, id: \.self) { index in
                        Circle()
                            .fill(index == currentPage ? Color.appGreen : Color.appGreen.opacity(0.3))
                            .frame(width: 8, height: 8)
                    }
                }
                .padding(.bottom, 24)

                Text(currentItem?.title ?? "")
                    .onboardingTitle()

                Text(currentItem?.subtitle ?? "")
                    .onboardingSubTitle()

                Button(isLastPage ? "Get Started" : "Next") {
                    if isLastPage {
                        onComplete()
                    } else {
                        withAnimation {
                            currentPage += 1
                        }
                    }
                }
                .buttonStyle(.app())
                .padding(.top, 24)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 24)
            .background {
                UnevenRoundedRectangle(cornerRadii: .init(topLeading: 48))
                    .fill(.white)
                    .ignoresSafeArea(edges: .bottom)
            }
        }
        .task {
            await vm.loadOnboardingItems()
        }
    }
}

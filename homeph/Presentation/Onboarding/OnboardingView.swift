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

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                if !isLastPage {
                    Button("Пропустить") {
                        onComplete()
                    }
                    .foregroundStyle(.secondary)
                    .padding()
                }
            }
            .frame(height: 56)

            // Страницы
            TabView(selection: $currentPage) {
                ForEach(Array(vm.onboardingItems.enumerated()), id: \.element.id) { index, page in
                    OnboardingPageView(page: page)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))

            // Нижняя кнопка
            Button {
                if isLastPage {
                    onComplete()
                } else {
                    withAnimation {
                        currentPage += 1
                    }
                }
            } label: {
                Text(isLastPage ? "Начать" : "Далее")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .background(.blue, in: RoundedRectangle(cornerRadius: 14))
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
        }
        .task {
            await vm.loadOnboardingItems()
        }
    }
}

private struct OnboardingPageView: View {
    let page: OnboardingPage

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            Image(page.image)
                .resizable()
                .scaledToFill()

            Text(page.title)
                .font(.title.bold())
                .multilineTextAlignment(.center)

            Text(page.subtitle)
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Spacer()
        }
    }
}

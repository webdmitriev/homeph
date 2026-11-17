//
//  OnboardingView.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

struct OnboardingView: View {
    let onComplete: () -> Void

    @State private var currentPage = 0

    private let pages: [OnboardingPage] = [
        OnboardingPage(
            image: "house.fill",
            title: "Найди жильё мечты",
            subtitle: "Дома и апартаменты по всем Филиппинам — от Манилы до Боракая"
        ),
        OnboardingPage(
            image: "calendar.badge.clock",
            title: "Бронируй в пару касаний",
            subtitle: "Выбирай даты, смотри реальные цены и бронируй без звонков"
        ),
        OnboardingPage(
            image: "message.fill",
            title: "Общайся с хозяевами",
            subtitle: "Задавай вопросы напрямую и получай ответы в чате"
        )
    ]

    private var isLastPage: Bool {
        currentPage == pages.count - 1
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
                ForEach(Array(pages.enumerated()), id: \.element.id) { index, page in
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
    }
}

private struct OnboardingPageView: View {
    let page: OnboardingPage

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            Image(systemName: page.image)
                .font(.system(size: 80))
                .foregroundStyle(.blue)
                .symbolRenderingMode(.hierarchical)

            Text(page.title)
                .font(.title.bold())
                .multilineTextAlignment(.center)

            Text(page.subtitle)
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            Spacer()
            Spacer() // компенсация высоты индикатора страниц
        }
    }
}

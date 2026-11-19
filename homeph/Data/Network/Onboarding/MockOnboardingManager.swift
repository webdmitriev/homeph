//
//  MockOnboardingManager.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import Foundation

final class MockOnboardingManager: OnboardingNetworkProtocol {
    var delay: Duration = .milliseconds(360)
    
    func fetchItems() async throws -> [OnboardingPage] {
        try await Task.sleep(for: delay)
        return Self.mockData
    }
    
    static let mockData: [OnboardingPage] = [
        OnboardingPage(image: "onboarding-01", title: "Best place to rest your body",
                       subtitle: "Find your ideal place to sleep, eat and feel like home. Don't be shy, we are expecting your honesty"),
        OnboardingPage(image: "onboarding-02", title: "Home is where you find comfort.",
                       subtitle: "Make yourself at home and find your own comfort. The least you find comfort is our failure."),
        OnboardingPage(image: "onboarding-03", title: "Find place. Create healthy mind",
                       subtitle: "It's about how you sleep. With our help, you will be also to find zen in the hardest environment."),
    ]
}


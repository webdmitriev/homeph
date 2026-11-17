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
        OnboardingPage(image: "onboarding-01", title: "Title 01", subtitle: "Description 01"),
        OnboardingPage(image: "onboarding-02", title: "Title 02", subtitle: "Description 02"),
        OnboardingPage(image: "onboarding-03", title: "Title 03", subtitle: "Description 03"),
    ]
}


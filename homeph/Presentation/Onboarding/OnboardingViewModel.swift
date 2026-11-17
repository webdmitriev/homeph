//
//  OnboardingViewModel.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import SwiftUI

@Observable
final class OnboardingViewModel {
    private let network: OnboardingNetworkProtocol
    
    init(network: OnboardingNetworkProtocol = MockOnboardingManager()) {
        self.network = network
    }
    
    var onboardingItems: [OnboardingPage] = []
    
    func loadOnboardingItems() async {
        self.onboardingItems = (try? await network.fetchItems()) ?? []
    }
}

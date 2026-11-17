//
//  OnboardingNetworkProtocol.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import Foundation

protocol OnboardingNetworkProtocol: Sendable {
    func fetchItems() async throws -> [OnboardingPage]
}

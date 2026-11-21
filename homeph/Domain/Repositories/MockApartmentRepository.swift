//
//  MockApartmentRepository.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import Foundation

import Foundation

final class MockApartmentRepository: ApartmentRepository {
    func fetchApartments() async throws -> [Apartment] {
        try await Task.sleep(for: .milliseconds(600))
        return MockApartments.all
    }

    func fetchApartment(id: String) async throws -> Apartment {
        try await Task.sleep(for: .milliseconds(300))
        guard let apartment = MockApartments.all.first(where: { $0.id == id }) else {
            throw URLError(.fileDoesNotExist)
        }
        return apartment
    }
}

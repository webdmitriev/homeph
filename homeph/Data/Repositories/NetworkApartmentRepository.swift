//
//  NetworkApartmentRepository.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import Foundation

final class NetworkApartmentRepository: ApartmentRepository {
    private let baseURL = URL(string: "https://api.homeph.example.com")!
    private let decoder = JSONDecoder()

    func fetchApartments() async throws -> [Apartment] {
        let url = baseURL.appending(path: "apartments")
        let (data, _) = try await URLSession.shared.data(from: url)
        return try decoder.decode([Apartment].self, from: data)
    }

    func fetchApartment(id: String) async throws -> Apartment {
        let url = baseURL.appending(path: "apartments/\(id)")
        let (data, _) = try await URLSession.shared.data(from: url)
        return try decoder.decode(Apartment.self, from: data)
    }
}

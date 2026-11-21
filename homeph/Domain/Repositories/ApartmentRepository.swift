//
//  ApartmentRepository.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import Foundation

protocol ApartmentRepository {
    func fetchApartments() async throws -> [Apartment]
    func fetchApartment(id: String) async throws -> Apartment
}

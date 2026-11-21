//
//  HomeViewModel.swift
//  homeph
//
//  Created by Олег Дмитриев on 17.11.2026.
//

import Foundation

@Observable
final class HomeViewModel {
    let apartmentRepository: ApartmentRepository = MockApartmentRepository()
    var apartments: [Apartment] = []

    func allApartments() async {
        self.apartments = (try? await apartmentRepository.fetchApartments()) ?? []
    }
}

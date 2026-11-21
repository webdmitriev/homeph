//
//  SearchViewModel.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import Foundation

@Observable
class SearchViewModel {
    let apartmentRepository: ApartmentRepository = MockApartmentRepository()
    var apartments: [Apartment] = []
    var searchApartments: [Apartment] = []

    func allApartments() async {
        self.apartments = (try? await apartmentRepository.fetchApartments()) ?? []
    }

    func search(query: String) {
        let q = query.trimmingCharacters(in: .whitespaces).lowercased()
        
        guard !q.isEmpty else {
            self.searchApartments = []
            return
        }
        
        self.searchApartments = apartments.filter {
            $0.title.lowercased().contains(q) || $0.address.lowercased().contains(q)
        }
    }
}

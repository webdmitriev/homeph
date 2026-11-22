//
//  MockApartments.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import Foundation

enum MockApartments {
    static let all: [Apartment] = [
        Apartment(
            id: "apt-001",
            thumbnail: "onboarding-01",
            title: "Beachfront Studio, Boracay",
            descr: "Уютная студия в 2 минутах от White Beach с видом на закат.",
            coordinate: .init(latitude: 11.9674, longitude: 121.9248),
            images: nil,
            address: "Station 2, White Beach, Boracay",
            rating: 4.8,
            reviews: [],
            price: 18,
            currency: "PHP",
            category: "Beachfront",
            owner: .init(name: "Maria Santos", avatar: "owner_maria", phone: "+63 917 123 4567"),
            specs: .init(guests: 2, bedrooms: 1, beds: 1, bathrooms: 1, area: 32),
            facilities: [.wifi, .airConditioning, .kitchen, .beachAccess]
        ),
        Apartment(
            id: "apt-002",
            thumbnail: "onboarding-02",
            title: "Modern Condo in Makati",
            descr: "Светлые апартаменты в деловом центре Манилы, 40-й этаж.",
            coordinate: .init(latitude: 14.5547, longitude: 121.0244),
            images: nil,
            address: "Ayala Avenue, Makati, Metro Manila",
            rating: 4.6,
            reviews: [],
            price: 14,
            currency: "PHP",
            category: "City",
            owner: .init(name: "Jose Reyes", avatar: "owner_jose", phone: "+63 918 765 4321"),
            specs: .init(guests: 3, bedrooms: 1, beds: 2, bathrooms: 1, area: 45),
            facilities: [.wifi, .pool, .parking, .airConditioning, .tv]
        ),
        Apartment(
            id: "apt-003",
            thumbnail: "onboarding-03",
            title: "Family House, Cebu",
            descr: "Просторный дом с садом для семейного отдыха.",
            coordinate: .init(latitude: 10.3157, longitude: 123.8854),
            images: nil,
            address: "Lahug, Cebu City",
            rating: 4.9,
            reviews: [],
            price: 21,
            currency: "PHP",
            category: "House",
            owner: .init(name: "Anna Lim", avatar: "owner_anna", phone: "+63 920 111 2233"),
            specs: .init(guests: 6, bedrooms: 3, beds: 4, bathrooms: 2, area: 120),
            facilities: [.wifi, .parking, .kitchen, .washer, .tv]
        ),
        Apartment(
            id: "apt-004",
            thumbnail: "onboarding-02",
            title: "Lagoon Villa, El Nido",
            descr: "Вилла у лагуны с каяками и сноркелингом.",
            coordinate: .init(latitude: 11.1784, longitude: 119.3956),
            images: nil,
            address: "El Nido, Palawan",
            rating: 5.0,
            reviews: [],
            price: 25,
            currency: "PHP",
            category: "Villa",
            owner: .init(name: "Paolo Cruz", avatar: "owner_paolo", phone: "+63 921 444 5566"),
            specs: .init(guests: 4, bedrooms: 2, beds: 2, bathrooms: 2, area: 85),
            facilities: [.wifi, .pool, .airConditioning, .kitchen, .beachAccess]
        )
    ]
}

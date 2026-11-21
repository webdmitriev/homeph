//
//  Apartment.swift
//  homeph
//
//  Created by Олег Дмитриев on 21.11.2026.
//

import Foundation

struct Apartment: Identifiable {
    let id: String
    let thumbnail: String
    let title: String
    let descr: String
    let coordinate: ApartmentGeoCoordinate
    let images: [String]?
    let address: String
    let rating: Double
    let reviews: [ApartmentReview]
    let price: Int
    let currency: String
    let category: String
    let owner: ApartmentOwner
    let specs: ApartmentSpecs
    let facilities: [Facility]
}

struct ApartmentSpecs {
    let guests: Int
    let bedrooms: Int
    let beds: Int
    let bathrooms: Int
    let area: Double
}

struct ApartmentOwner {
    let name: String
    let avatar: String
    let phone: String
}

struct ApartmentReview: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let review: String
}

struct ApartmentGeoCoordinate {
    let latitude: Double
    let longitude: Double
}

enum Facility: String, CaseIterable, Identifiable {
    case wifi, pool, parking, airConditioning, kitchen, tv, washer, beachAccess

    var id: String { rawValue }

    var title: String {
        switch self {
        case .wifi: "Wi-Fi"
        case .pool: "Pool"
        case .parking: "Parking"
        case .airConditioning: "Air Conditioning"
        case .kitchen: "Kitchen"
        case .tv: "TV"
        case .washer: "Washer"
        case .beachAccess: "Beach Access"
        }
    }

    var icon: String {
        switch self {
        case .wifi: "wifi"
        case .pool: "figure.pool.swim"
        case .parking: "car.fill"
        case .airConditioning: "snowflake"
        case .kitchen: "frying.pan"
        case .tv: "tv"
        case .washer: "washer"
        case .beachAccess: "beach.umbrella"
        }
    }
}

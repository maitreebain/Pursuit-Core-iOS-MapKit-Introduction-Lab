//
//  NYCModel.swift
//  MapKit-Lab
//
//  Created by Maitree Bain on 2/26/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import Foundation

struct NYCModel: Codable {
    let school_name: String
    let neighborhood: String
    let location: String
    let latitude: Double
    let longitude: Double
}

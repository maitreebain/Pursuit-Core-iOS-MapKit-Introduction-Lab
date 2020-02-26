//
//  CoreLocationSession.swift
//  MapKit-Lab
//
//  Created by Maitree Bain on 2/26/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import Foundation
import CoreLocation

class CoreLocationSession: NSObject {
    
    private var locationManager: CLLocationManager
    
    override init() {
        locationManager = CLLocationManager()
        super.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        startSigLocationChanges()
    }
    
    private func startSigLocationChanges() {
        if !CLLocationManager.significantLocationChangeMonitoringAvailable() {
          return
        }
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    
}

extension CoreLocationSession: CLLocationManagerDelegate {
    
}

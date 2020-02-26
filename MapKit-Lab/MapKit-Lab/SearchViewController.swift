//
//  SearchViewController.swift
//  MapKit-Lab
//
//  Created by Maitree Bain on 2/26/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit
import MapKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var mapView: MKMapView!
    
    private var userTrackingButton: MKUserTrackingButton!
    
    private let locationSession = CoreLocationSession()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
}

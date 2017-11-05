//
//  Navigate.swift
//  Explore
//
//  Created by Hao Mou on 05/11/2017.
//  Copyright © 2017 Icosahedron. All rights reserved.
//

import UIKit
import GoogleMaps

var (viewLat, viewLong) : (Double, Double) = (0.0, 0.0)

class Navigate: UIViewController {
    
    override func loadView() {
        
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 17.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: destLat, longitude: destLong)
        marker.title = "Dest"
        marker.map = mapView
        
    }
    

    
}

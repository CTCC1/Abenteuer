//
//  GView.swift
//  Explore
//
//  Created by Hao Mou on 04/11/2017.
//  Copyright © 2017 Icosahedron. All rights reserved.
//

import UIKit
import GoogleMaps

var panoView = GMSPanoramaView(frame: .zero)
var (destLat, destLong) : (Double, Double) = (0.0, 0.0)

class GView: UIViewController, GMSPanoramaViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        panoView.navigationGestures = false
        panoView.delegate = self
        self.view = panoView
        
        panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: newLat, longitude: newLong), radius: 15)
        
    }
    
    func panoramaView(_ panoramaView: GMSPanoramaView, didMoveTo: GMSPanorama, nearCoordinate: CLLocationCoordinate2D) {
        destLat = nearCoordinate.latitude
        destLong = nearCoordinate.longitude
        print(String(destLat) + "," + String(destLong))
    }
    
}

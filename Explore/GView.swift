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

class GView: UIViewController, GMSMapViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
       
        panoView.navigationGestures = false
        self.view = panoView
        
        panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: 42.05342, longitude: -87.67248))
    }
    
}

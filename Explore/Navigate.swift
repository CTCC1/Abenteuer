//
//  Navigate.swift
//  Explore
//
//  Created by Hao Mou on 05/11/2017.
//  Copyright © 2017 Icosahedron. All rights reserved.
//

import UIKit
import MapKit

class Navigate: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = MKDirectionsRequest()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), addressDictionary: nil))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: newLat, longitude: newLong), addressDictionary: nil))
        request.requestsAlternateRoutes = true
        request.transportType = .walking
        
        let directions = MKDirections(request: request)
        
        directions.calculate { [unowned self] response, error in
            guard let unwrappedResponse = response else { return }
            
            for route in unwrappedResponse.routes {
                self.map.add(route.polyline)
                self.map.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
            }
        }
        
        map.delegate = self
        map.showsUserLocation = true
    
        
        
        
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(polyline: overlay as! MKPolyline)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 8.0
        return renderer
    }

    
}

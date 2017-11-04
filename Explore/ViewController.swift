//
//  ViewController.swift
//  Explore
//
//  Created by Hao Mou on 04/11/2017.
//  Copyright © 2017 Icosahedron. All rights reserved.
//

import UIKit
import CoreLocation

var (startLong, startLat) : (Double, Double) = (0.0, 0.0)
var (newLat, newLong) : (Double, Double) = (0.0, 0.0)

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var ifWin: UILabel!
    
    var locationManager: CLLocationManager = CLLocationManager()
    var myLocation: CLLocation!
    var (latitude, longitude) : (Double, Double) = (0.0, 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        myLocation = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation])
    {
        let latestLocation: CLLocation = locations[locations.count - 1]
        
        latitude = latestLocation.coordinate.latitude
        longitude = latestLocation.coordinate.longitude

        if myLocation == nil {
            myLocation = latestLocation
        }
        
        if reach_destination(DestLat: newLat, DestLon: newLong, CurrLat: latitude, CurrLon: longitude, Acurracy: 10) {
            ifWin.text = "You Win!"
        }
    }
    
    func locationManager(_ manager: CLLocationManager,
                         didFailWithError error: Error) {
    }
    
    @IBAction func generate(_ sender: UIButton) {
        (startLong, startLat) = (longitude, latitude)
        (newLat, newLong) = random_location(startLat, startLong, 0.003, 0.003)
        location.text = String(format: "%.5f", newLat) + ", " + String(format: "%.5f", newLong)
        panoView.moveNearCoordinate(CLLocationCoordinate2D(latitude: newLat, longitude: newLong))
        ifWin.text = ""
    }
    

}


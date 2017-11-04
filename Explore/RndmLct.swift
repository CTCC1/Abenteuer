//
//  RndmLct.swift
//  Explore
//
//  Created by Hao Mou on 04/11/2017.
//  Copyright © 2017 Icosahedron. All rights reserved.
//

import Foundation

func is_in_range(latitude: Double, longitude: Double) -> Bool{
    var in_range = true
    if (latitude < -90) || (latitude > 90){
        in_range = false
    }
    if (longitude < -180) || (longitude > 180){
        in_range = false
    }
    return in_range
}

func adjust_range(d: Double, range: Double) -> Double{
    var adjusted_range: Double = 0.0
    if d <= 0.5{
        adjusted_range = -(range * 2 * (0.5 - d))
    }
    else if d > 0.5 {
        adjusted_range = range * 2 * (d - 0.5)
    }
    return adjusted_range
}

func random_location(_ latitude: Double,_ longitude: Double,_ latitudeRange: Double,_ longitudeRange: Double) -> (NewLatitude: Double, NewLongitude: Double){
    var NewLatitude: Double = 91.0
    var NewLongitude: Double = 181.0
    var dlat: Double = 0.0
    var dlon: Double = 0.0
    var i: Int = 0
    while !is_in_range(latitude: NewLatitude, longitude: NewLongitude){
        print("i = \(i)")
        i += 1
        let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
        srand48(Int(time))
        dlat = drand48() // random double between 0.0 and 1.0
        dlon = drand48()
        dlat = adjust_range(d: dlat, range: latitudeRange)
        dlon = adjust_range(d: dlon, range: longitudeRange)
        NewLatitude = latitude + dlat
        NewLongitude = longitude + dlon
    }
    return (NewLatitude, NewLongitude)
}

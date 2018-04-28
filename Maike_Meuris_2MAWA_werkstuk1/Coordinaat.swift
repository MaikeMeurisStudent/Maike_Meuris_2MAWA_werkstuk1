//
//  Coordinaat.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 29/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import Foundation
import MapKit

class Coordinaat{
    var latitude:CLLocationDegrees
    var longitude:CLLocationDegrees
    
    init(latitude:CLLocationDegrees, longitude:CLLocationDegrees) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

//
//  Persoon.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 29/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import Foundation
import UIKit

class Persoon{
    var naam:String
    var voornaam:String
    var foto:UIImage
    var adres:Adres
    var gpsCoordinaat:Coordinaat
    var telefoonnummer:String
    
    init(naam:String, voornaam:String, foto:UIImage, adres:Adres, gpsCoordinaat:Coordinaat, telefoonnummer:String) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.gpsCoordinaat = gpsCoordinaat
        self.telefoonnummer = telefoonnummer
    }
}

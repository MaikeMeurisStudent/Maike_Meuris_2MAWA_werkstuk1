//
//  Adres.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 29/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import Foundation

class Adres{
    var straat:String
    var huisnummer:String
    var postcode:String
    var gemeente:String
    
    init(straat:String, huisnummer:String, postcode:String, gemeente:String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
    
    func printAdres() -> String{
        return self.straat + " " + self.huisnummer + ", " + self.postcode + " " + self.gemeente
    }
}

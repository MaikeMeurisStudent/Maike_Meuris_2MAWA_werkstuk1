//
//  AppData.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 13/05/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

/*
 Bron Singleton pattern in Swift: https://cocoacasts.com/what-is-a-singleton-and-how-to-create-one-in-swift/
 */

import Foundation
import MapKit

class AppData{
    
    // Maakt van zichzelf een instantie aan
    static let appData = AppData()
    
    // 'let', zodat de app data niet gemanipuleerd kan worden
    let personen:[Persoon]
    
    // Bij het initialiseren van de instantie wordt de personenarray aangemaakt en opgevuld
    private init(){
        
        var personenArray = [Persoon]()
        
        let adres1 = Adres(straat: "Fontainasstraat", huisnummer: "12", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat1 = CLLocationCoordinate2D(latitude: 50.833038, longitude: 4.341547)
        
        let adres2 = Adres(straat: "Rue Émile Féron", huisnummer: "19", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat2 = CLLocationCoordinate2D(latitude: 50.833650, longitude: 4.340094)
        
        let adres3 = Adres(straat: "Chaussée de Forest", huisnummer: "24", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat3 = CLLocationCoordinate2D(latitude: 50.832263, longitude: 4.342198)
        
        let adres4 = Adres(straat: "Fontainasstraat", huisnummer: "7", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat4 = CLLocationCoordinate2D(latitude: 50.833128, longitude: 4.341987)
        
        personenArray.append(Persoon(naam: "Meuris", voornaam: "Maike", foto: UIImage(named: "woman1")!, adres: adres1, gpsCoordinaat: coordinaat1, telefoonnummer: "0478945783"))
        
        personenArray.append(Persoon(naam: "Luyckx", voornaam: "Lieven", foto: UIImage(named: "guy1")!, adres: adres2, gpsCoordinaat: coordinaat2, telefoonnummer: "0478945784"))
        
        personenArray.append(Persoon(naam: "Meuris", voornaam: "Noa", foto: UIImage(named: "woman2")!, adres: adres3, gpsCoordinaat: coordinaat3, telefoonnummer: "0478945785"))
        
        personenArray.append(Persoon(naam: "Venstermans", voornaam: "Annie", foto: UIImage(named: "woman3")!, adres: adres4, gpsCoordinaat: coordinaat4, telefoonnummer: "0478945786"))
        
        self.personen = personenArray
    }
    
}

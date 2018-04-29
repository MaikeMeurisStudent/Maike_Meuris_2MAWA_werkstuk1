//
//  MapViewController.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 29/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    var personen = [Persoon]()
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()

        
        let adres1 = Adres(straat: "Fontainasstraat", huisnummer: "12", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat1 = CLLocationCoordinate2D(latitude: 50.833038, longitude: 4.341547)
        
        let adres2 = Adres(straat: "Rue Émile Féron", huisnummer: "19", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat2 = CLLocationCoordinate2D(latitude: 50.833650, longitude: 4.340094)
        
        let adres3 = Adres(straat: "Chaussée de Forest", huisnummer: "24", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat3 = CLLocationCoordinate2D(latitude: 50.832263, longitude: 4.342198)
        
        let adres4 = Adres(straat: "Fontainasstraat", huisnummer: "7", postcode: "1060", gemeente: "Sint-Gillis")
        let coordinaat4 = CLLocationCoordinate2D(latitude: 50.833128, longitude: 4.341987)
        
        personen.append(Persoon(naam: "Meuris", voornaam: "Maike", foto: UIImage(named: "woman1")!, adres: adres1, gpsCoordinaat: coordinaat1, telefoonnummer: "0478945783"))
        
        personen.append(Persoon(naam: "Luyckx", voornaam: "Lieven", foto: UIImage(named: "guy1")!, adres: adres2, gpsCoordinaat: coordinaat2, telefoonnummer: "0478945784"))
        
        personen.append(Persoon(naam: "Meuris", voornaam: "Noa", foto: UIImage(named: "woman2")!, adres: adres3, gpsCoordinaat: coordinaat3, telefoonnummer: "0478945785"))
        
        personen.append(Persoon(naam: "Venstermans", voornaam: "Annie", foto: UIImage(named: "woman3")!, adres: adres4, gpsCoordinaat: coordinaat4, telefoonnummer: "0478945786"))
        
        
        
        for persoon in personen{
            let titel = persoon.printVolledigeNaam()
            
            let myAnnotation = MyAnnotation(coordinate: persoon.gpsCoordinaat, title: titel)
            
            self.mapView.addAnnotation(myAnnotation)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }

}

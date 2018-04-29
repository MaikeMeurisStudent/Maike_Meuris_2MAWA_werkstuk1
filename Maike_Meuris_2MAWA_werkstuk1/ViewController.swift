//
//  ViewController.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 28/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var mapView: MKMapView!
    
    var persoon:Persoon?
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var adresLabel: UILabel!
    @IBOutlet weak var telefoonnummerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        let myAnnotation = MyAnnotation(coordinate: persoon!.gpsCoordinaat, title: "Huidige locatie")
        
        self.mapView.addAnnotation(myAnnotation)
        
        let center = CLLocationCoordinate2D(latitude: mapView.annotations[0].coordinate.latitude, longitude: mapView.annotations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
        
        naamLabel.text = persoon!.printVolledigeNaam()
        adresLabel.text = persoon!.adres.printAdres()
        telefoonnummerLabel.text = persoon!.telefoonnummer
        foto.image = persoon!.foto
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


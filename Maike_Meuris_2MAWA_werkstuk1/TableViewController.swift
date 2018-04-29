//
//  TableViewController.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 29/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import UIKit
import MapKit

class TableViewController: UITableViewController {
    
    var personen = [Persoon]()
    var geselecteerdePersoon:Persoon?

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        //Bron Custom Cells:
        //https:/stackoverflow.com/questions/33004189/swift-custom-cell-creating-your-own-cell-with-labels
        
        let customCell = tableView.dequeueReusableCell(withIdentifier: "persoonCell", for: indexPath) as! TableViewCell
        
        let persoon = personen[indexPath.row]
        customCell.naamLabel?.text = persoon.printVolledigeNaam()
        customCell.fotoImage.image = persoon.foto
        
        return customCell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetailView" {
            if let nextVC = segue.destination as? PersoonDetailViewController {
                nextVC.persoon = geselecteerdePersoon
                print("persoon werd doorgestuurd")
                //print(geselecteerdePersoon!.voornaam)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        geselecteerdePersoon = personen[indexPath.row]
        performSegue(withIdentifier: "naarDetailView", sender: self)
    }

}

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
    
    var geselecteerdePersoon:Persoon?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    // Er is één sectie
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // Het aantal cellen in de sectie is gelijk aan het aantal personen in de array
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return AppData.appData.personen.count
    }

    // Cellen opvullen
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /*
        Bron Custom Cells:
        https://stackoverflow.com/questions/33004189/swift-custom-cell-creating-your-own-cell-with-labels
        */
        
        let customCell = tableView.dequeueReusableCell(withIdentifier: "persoonCell", for: indexPath) as! TableViewCell
        
        let persoon = AppData.appData.personen[indexPath.row]
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


    // De aangeklikte persoon doorsturen naar de detailview
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetailView" {
            if let nextVC = segue.destination as? PersoonDetailViewController {
                nextVC.persoon = geselecteerdePersoon
            }
        }
    }
    
    // Als er een persoon in de lijst wordt aangeklikt, moet er een segue getriggerd worden
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        geselecteerdePersoon = AppData.appData.personen[indexPath.row]
        performSegue(withIdentifier: "naarDetailView", sender: self)
    }

}

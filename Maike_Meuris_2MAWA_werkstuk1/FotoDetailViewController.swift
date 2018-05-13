//
//  FotoDetailViewController.swift
//  Maike_Meuris_2MAWA_werkstuk1
//
//  Created by Maike Meuris on 29/04/2018.
//  Copyright © 2018 Maike Meuris. All rights reserved.
//

import UIKit

class FotoDetailViewController: UIViewController {
    
    /*
    Bron:
    https://stackoverflow.com/questions/29202882/how-do-you-make-an-uiimageview-on-the-storyboard-clickable-swift
    */
    
    var doorgegevenFoto:UIImage?

    @IBOutlet weak var foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foto.image = doorgegevenFoto!

        // Do any additional setup after loading the view.
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

}

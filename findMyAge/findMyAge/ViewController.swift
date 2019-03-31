//
//  ViewController.swift
//  findMyAge
//
//  Created by LABMAC24 on 15/02/19.
//  Copyright © 2019 LABMAC24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtAnioNacimiento: UITextField!
    
    @IBOutlet var lblMuestraEdad: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
    }


    @IBAction func btnBuscaEdad(_ sender: Any) {
        let anioNac = Int(txtAnioNacimiento.text!)
        let edadPersona = 2019 - anioNac!
        lblMuestraEdad.text = "Tu edad es \(edadPersona)"
    }
    
}


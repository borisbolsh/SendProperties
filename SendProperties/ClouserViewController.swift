//
//  ClouserViewController.swift
//  SendProperties
//
//  Created by Boris Bolshakov on 8.09.21.
//

import UIKit

class ClouserViewController: UIViewController {

    var complition: ((String) -> ())?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onButtonAction () {
        
        complition?("Success from B")
        navigationController?.popToRootViewController(animated: true)
        
    }
    
}

//
//  ClouserViewController.swift
//  SendProperties
//
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

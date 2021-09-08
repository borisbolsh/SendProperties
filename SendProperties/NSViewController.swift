//
//  NSViewController.swift
//  SendProperties
//
//  Created by Boris Bolshakov on 8.09.21.
//

import UIKit

class NSViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func onButtonAction () {
        
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["data": 42, "status": true])
        
        navigationController?.popToRootViewController(animated: true)
        
    }

}

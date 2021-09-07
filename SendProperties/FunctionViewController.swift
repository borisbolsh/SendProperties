//
//  FunctionViewController.swift
//  SendProperties
//
//  Created by Boris Bolshakov on 7.09.21.
//

import UIKit

class FunctionViewController: UIViewController {

    weak var viewController: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onUserAction() {
        viewController?.onUserAction(data: "Hi A from func")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

}

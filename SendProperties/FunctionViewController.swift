//
//  FunctionViewController.swift
//  SendProperties
//
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

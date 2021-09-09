//
//  DelegateViewController.swift
//  SendProperties
//
//

import UIKit

class DelegateViewController: UIViewController {

    var delegate: ItemReadyDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonAction() {
        delegate?.itemReady(type: "Some item from B")
        navigationController?.popToRootViewController(animated: true)
    }
    
}

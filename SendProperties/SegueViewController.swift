//
//  SegueViewController.swift
//  SendProperties
//
//

import UIKit

class SegueViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = text
    }
}

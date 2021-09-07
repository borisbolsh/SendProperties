//
//  ViewController.swift
//  SendProperties
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pushAction(_ sender: Any) {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyB.instantiateViewController(identifier: "PushViewController") as? PushViewController else { return }
        
        vc.text = "Hello from A"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func segueAction(_ sender: Any) {
        self.performSegue(withIdentifier: "showVC", sender: "Hey from A")
    }
    
    @IBAction func funcAction(_ sender: Any) {
    }
    
    @IBAction func delegateAction(_ sender: Any) {
    }
    
    @IBAction func clouserAction(_ sender: Any) {
    }
    
    
    @IBAction func notificationCenterAction(_ sender: Any) {
    }
    
}


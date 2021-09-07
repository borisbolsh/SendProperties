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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showVC" {
            if let vc = segue.destination as? SegueViewController {
                guard let text = sender as? String else { return }
                vc.text = text
            }
        }
    }
    
    
    
    @IBAction func funcAction(_ sender: Any) {
        let vc = FunctionViewController()
        vc.viewController = self
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func onUserAction(data: String) {
        print("Data received: \(data)")
    }
    
    
    @IBAction func delegateAction(_ sender: Any) {
    }
    
    @IBAction func clouserAction(_ sender: Any) {
    }
    
    
    @IBAction func notificationCenterAction(_ sender: Any) {
    }
    
}


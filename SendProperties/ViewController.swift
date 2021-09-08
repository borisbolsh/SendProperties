//
//  ViewController.swift
//  SendProperties
//
//

import UIKit

protocol ItemReadyDelegate {
    func itemReady(type: String)
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: ViewController.notificationName, object: nil)
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
        let vc = DelegateViewController()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func clouserAction(_ sender: Any) {
        
        let vc = ClouserViewController()
        
        vc.complition = { text in
            print("Text \(text)")
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    static let notificationName = Notification.Name("100FM")
    
    @IBAction func notificationCenterAction(_ sender: Any) {
        let vc = NSViewController()
        
        self.navigationController?.pushViewController(vc, animated: true)
        

        
    }
    
    @objc func onNotification(notification: Notification) {
        print(notification.userInfo)
    }
    
}

extension ViewController: ItemReadyDelegate {
    func itemReady(type: String) {
        print("Ready \(type)")
    }
}

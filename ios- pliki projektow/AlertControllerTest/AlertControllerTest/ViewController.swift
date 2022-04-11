//
//  ViewController.swift
//  AlertControllerTest
//
//  Created by Student G225 07 on 04/04/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_sender:Any){
    // create the alert
    let alert = UIAlertController(title: "Uwaga", message: "Jesteś obiektem moich paczań.", preferredStyle: UIAlertController.Style.alert)
    // add an action (button)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    // show the alert
    self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func showSimpleActionSheet(_sender:Any, controller: UIViewController) {
    let alert = UIAlertController(title: "Error", message: "Co chcesz zrobić?", preferredStyle: .actionSheet)
    alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in print("User click Approve button")
    }))
    alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in print("User click Edit button")
    }))
    alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in print("User click Delete button")
    }))
    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in print("User click Dismiss button")
    }))
    self.present(alert, animated: true, completion: { print("completion block")
    })
    }

    
    @IBAction func showAlertWithDistructiveButton(_sender:Any) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            _ in //CancelAction
            
        }
                                     ))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertAction.Style.destructive,
        handler: {(_: UIAlertAction!) in //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func showAlertWithTextField(_sender:Any) {
    let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
    let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
    if let txtField = alertController.textFields?.first, let text = txtField.text {
    // operations
    print("Text==>" + text) }
    }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }; alertController.addTextField { (textField) in
    textField.placeholder = "Tag" }
        alertController.addAction(confirmAction);
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showToast(_sender:Any) {
    let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2
    -
    75, y:
    self.view.frame.size.height
    -
    100, width: 150, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor =
    UIColor.white
        toastLabel.font = .systemFont(ofSize: 12)
    toastLabel.textAlignment = .center;
    toastLabel.text = "test message"
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds = true
    self.view.addSubview(toastLabel)
    UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
    toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
    toastLabel.removeFromSuperview()
    })
    }
}


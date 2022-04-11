//
//  ViewController.swift
//  StackViewController
//
//  Created by Student G225 07 on 28/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rejestrujButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func RejestrujButtonClick(_ sender: Any) {
        self.present(showDialog(), animated: true, completion: nil)
    }
    
    func showDialog() -> UIAlertController{
        let dialogMessage = UIAlertController(title: "Rejestracja Alert", message: "Pomyslnie zarejstrowano", preferredStyle: .alert
        )
        
        let ok = UIAlertAction(title:"OK", style: .default, handler: {(action) -> Void in print("Zarejestrowano !!")})
        
        dialogMessage.addAction(ok)
        
        return dialogMessage
        
    
    }
}


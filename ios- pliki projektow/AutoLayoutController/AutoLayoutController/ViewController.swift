//
//  ViewController.swift
//  AutoLayoutController
//
//  Created by Student G225 07 on 21/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ClickCheckButton(_ sender: UIButton) {
        displayAlert()
    }
    
    func displayAlert(){
        let dialogMessage = UIAlertController(title: "Informacja", message: "Ten Iphone jest niedostepny w Twojej lokalizacji", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: {(action)-> Void in print("Ok. Przycinij przycisk")
            
        })
        
        dialogMessage.addAction(ok)
        
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
}


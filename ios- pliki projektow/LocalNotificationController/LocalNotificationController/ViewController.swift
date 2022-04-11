//
//  ViewController.swift
//  LocalNotificationController
//
//  Created by Student G225 07 on 04/04/2022.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { (granted, error) in
        if granted { print("yes")
        } else {
            print("No")
        }
        }
    }
    
    @IBAction func sendNotification(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Error"
        content.subtitle = "Twój telefon został shackowany!"
        content.body = " Sprawdź czy jesteś bezpieczny"
        let imageName = "appleLogo"
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        content.attachments = [attachment]
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}


//
//  ViewController.swift
//  Suebprom
//
//  Created by Akekapon Suebprom on 2/22/2560 BE.
//  Copyright © 2560 kratostracking. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController {

    
    var ref:FIRMessagingMessageInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let xxx = MessageLog()
        

        let token = FIRInstanceID.instanceID().token()
        print("Token key is: \(token!)")
        
        
        DispatchQueue.main.async
        {
            let sssss = FIRMessagingRemoteMessage.self
        
        print("Value is : \(sssss)")
            //print(xxx.Message_log)
            
            //ref = FIRMessaging.messaging().
                print("XXXxxxXXXxxxXXX")
        }
        
    }

    @IBAction func didGotoLog(_ sender: Any) {
        
        performSegue(withIdentifier: "gotolog", sender: nil)
    }
    


}


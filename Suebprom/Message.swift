//
//  File.swift
//  Suebprom
//
//  Created by Akekapon Suebprom on 3/7/2560 BE.
//  Copyright © 2560 kratostracking. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class MessageLog{
    var Message_log:String = ""
    
    func MessageLog(msg:String){
        print("Hello : \(msg)")
    }
    func ake(dd:String) -> String {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        let newMember = NSEntityDescription.insertNewObject(forEntityName: "Log", into: context)
        
        newMember.setValue(dd, forKey: "Message")
        newMember.setValue("30/06/27", forKey: "Time")
        
        do{
            try context.save()
            return "is save"
        }catch{
            return "can't save"
        }
        
        
        
    }
}

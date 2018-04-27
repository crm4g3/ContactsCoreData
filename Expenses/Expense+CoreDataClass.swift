//
//  Expense+CoreDataClass.swift
//  Expenses
//
//  Created by Cody McIlviane on 4/24/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {

    
    convenience init?(name: String?, number: String?){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext else{
            return nil
        }
        
        self.init(entity: Expense.entity(), insertInto: managedContext)
        
        self.name = name
        self.number = number
        
    }
}

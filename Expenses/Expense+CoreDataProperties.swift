//
//  Expense+CoreDataProperties.swift
//  Expenses
//
//  Created by Cody McIlviane on 4/27/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var number: String?
    @NSManaged public var name: String?

}

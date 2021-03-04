//
//  Favourite+CoreDataProperties.swift
//  Mahendra
//
//  Created by Mahendra Vishwakarma on 04/03/21.
//  Copyright © 2021 Mahendra. All rights reserved.
//
//

import Foundation
import CoreData


extension Favourite {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Favourite> {
        return NSFetchRequest<Favourite>(entityName: "Favourite")
    }

    @NSManaged public var title: String?
    @NSManaged public var body: String?
    @NSManaged public var id: Int64
    @NSManaged public var userId: Int64

}

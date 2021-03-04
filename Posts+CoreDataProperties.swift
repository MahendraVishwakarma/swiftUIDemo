//
//  Posts+CoreDataProperties.swift
//  Mahendra
//
//  Created by Mahendra Vishwakarma on 05/03/21.
//  Copyright © 2021 Mahendra. All rights reserved.
//
//

import Foundation
import CoreData


extension Posts {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Posts> {
        return NSFetchRequest<Posts>(entityName: "Posts")
    }

    @NSManaged public var posts: NSObject?

}

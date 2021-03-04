//
//  PostsModel.swift
//  Mahendra
//
//  Created by Mahendra Vishwakarma on 01/03/21.
//  Copyright © 2021 Mahendra. All rights reserved.
//

import Foundation
struct PostsModel:Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
    
}

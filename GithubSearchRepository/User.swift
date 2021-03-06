//
//  User.swift
//  GithubSearchRepository
//
//  Created by Kei on 2017/03/10.
//
//

import Foundation

struct User {
    let id: Int
    let login: String
    
    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else{
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }
        
        guard let login = dictionary["login"] as? String else {
            throw JSONDecodeError.missingValue(key: "login", actualValue: dictionary["login"])
        }
        
        self.id = id
        self.login = login
    }
}

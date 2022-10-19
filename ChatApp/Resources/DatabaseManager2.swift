//
//  DatabaseManager2.swift
//  ChatApp
//
//  Created by Mehmet Akdeniz on 19.10.2022.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager2{
    static let shared = DatabaseManager2()
    private let database = Database.database().reference()
    
    public func insertUser(with user: ChatAppUserr){
        database.child(user.emailAddress).setValue([
            "first_name": user.firstName,
            "last_name": user.lastName
     
        ])
    }
    
    struct ChatAppUserr {
        let firstName: String
        let lastName: String
        let emailAddress: String
    }

}













//    public func test(){
//        database.child("foo").setValue(["something:", true])
//    }

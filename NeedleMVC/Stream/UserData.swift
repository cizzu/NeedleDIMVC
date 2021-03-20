//
//  UserData.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 21/02/21.
//

import UIKit

protocol UserData {
    var value: DataConvertible? { get }
}

protocol MutableUserData: UserData {
    mutating func set(value: DataConvertible?)
}

class UserDataImplementor: MutableUserData {

    private(set) var value: DataConvertible?
    
    func set(value: DataConvertible?) {
        self.value = value
    }
}

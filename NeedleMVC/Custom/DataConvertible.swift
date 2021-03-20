//
//  DataConvertible.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 21/02/21.
//

import Foundation

protocol DataConvertible {
    var data: Data { get }
}

extension Data: DataConvertible {
    
    var int: Int? {
        return Int(data: self)
    }
    
    var string: String? {
        return String(data: self, encoding: .utf8)
    }
    
    var bool: Bool? {
        return Bool(data: self)
    }
    
    var data: Data { self }
}

extension DataConvertible where Self: ExpressibleByIntegerLiteral {

    init?(data: Data) {
        var value: Self = 0
        guard data.count == MemoryLayout.size(ofValue: value) else { return nil }
        _ = withUnsafeMutableBytes(of: &value, { data.copyBytes(to: $0)} )
        self = value
    }

    var data: Data {
        return withUnsafeBytes(of: self) { Data($0) }
    }
}

extension String: DataConvertible {
    var data: Data { Data(utf8) }
}

extension Bool: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = value != 0
    }
}

extension Int : DataConvertible { }
extension Double: DataConvertible { }
extension Bool: DataConvertible {}

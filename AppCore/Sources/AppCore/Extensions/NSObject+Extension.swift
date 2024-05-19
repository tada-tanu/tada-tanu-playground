//
//  NSObject+Extension.swift
//
//
//  Created by 多田悠二 on 2024/05/18.
//

import Foundation

extension NSObject {
    static var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    static var bundle: Bundle {
        return .init(for: self.self)
    }

    var className: String {
        return Self.className
    }
}

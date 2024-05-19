//
//  UIViewController+Extension.swift
//
//
//  Created by 多田悠二 on 2024/05/18.
//

import UIKit

public extension UIViewController {
    func wrapNavugationController() -> UINavigationController {
        return UINavigationController(rootViewController: self)
    }
}


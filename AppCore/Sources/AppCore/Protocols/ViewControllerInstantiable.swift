//
//  File.swift
//  
//
//  Created by 多田悠二 on 2024/05/18.
//

import UIKit

public protocol ViewControllerInstantiable: UIViewController {
    associatedtype Dependency

    init(dependency: Dependency)
}

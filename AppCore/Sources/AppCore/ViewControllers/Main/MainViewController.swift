//
//  MainViewController.swift
//  
//
//  Created by 多田悠二 on 2024/05/18.
//

import UIKit

public class MainViewController: UIViewController {
    // MARK: - Dependency
    public typealias Dependency = Void

    // MARK: - Properties
    // MARK: - Initialize
    required public init(dependency: Dependency) {
        super.init(nibName: Self.className, bundle: Bundle.module)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController: ViewControllerInstantiable {}

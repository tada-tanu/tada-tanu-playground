//
//  PagerWithDynamicFixedHeaderViewController.swift
//  
//
//  Created by 多田悠二 on 2024/05/20.
//

import UIKit

class PagerWithDynamicFixedHeaderViewController: UIViewController {
    // MARK: - Dependency
    typealias Dependency = Void

    // MARK: - Properties

    // MARK: - Inititalize
    required init(dependency: Void) {
        super.init(nibName: Self.className, bundle: Bundle.module)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PagerWithDynamicFixedHeaderViewController: ViewControllerInstantiable {}

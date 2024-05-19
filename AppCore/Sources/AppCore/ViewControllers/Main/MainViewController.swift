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
    @IBOutlet private var tableView: UITableView! {
        didSet {
            tableView.delegate = self
        }
    }

    private lazy var dataSource: UITableViewDiffableDataSource<Section, Item> = {
        .init(tableView: tableView, cellProvider: { tableView, indexPath, itemIdentifier in
            let cell = UITableViewCell()
            var content = cell.defaultContentConfiguration()
            switch itemIdentifier {
            case .pagerWithDynamicFixedHeader:
                content.text = itemIdentifier.rawValue
            }
            cell.contentConfiguration = content
            return cell
        })
    }()

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
        var snapShot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapShot.appendSections([.default])
        snapShot.appendItems(Item.allCases)
        dataSource.apply(snapShot)
    }
}

extension MainViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        defer { tableView.deselectRow(at: indexPath, animated: true) }
        guard let item = dataSource.itemIdentifier(for: indexPath) else { return }
        switch item {
        case .pagerWithDynamicFixedHeader:
            let viewController = PagerWithDynamicFixedHeaderViewController(dependency: ())
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

extension MainViewController {
    enum Section {
        case `default`
    }

    enum Item: String, CaseIterable {
        case pagerWithDynamicFixedHeader = "スクロールで高さが変わるヘッダー付きのぺージャービュー"
    }
}

extension MainViewController: ViewControllerInstantiable {}

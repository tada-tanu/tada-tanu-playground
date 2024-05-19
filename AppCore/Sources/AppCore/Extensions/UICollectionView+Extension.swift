//
//  UICollectionView+Extension.swift
//
//
//  Created by 多田悠二 on 2024/05/20.
//

import UIKit

extension UICollectionView {
    func register<Cell: UICollectionViewCell>(_ cellType: Cell.Type, forCellWithReuseIdentifier identifier: String)  {
        register(.init(nibName: cellType.className, bundle: nil), forCellWithReuseIdentifier: cellType.className)
    }

    func register<Cell: UICollectionViewCell>(_ cellType: Cell.Type)  {
        register(cellType, forCellWithReuseIdentifier: cellType.className)
    }

    func dequeReusableCell<Cell: UICollectionViewCell>(_ cellType: Cell.Type, for indexPath: IndexPath) -> Cell {
        return dequeueReusableCell(withReuseIdentifier: cellType.className, for: indexPath) as! Cell
    }
}

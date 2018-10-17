//
//  SectionHeaderCollectionViewCell.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit
import DataSourceKit

class SectionHeaderCollectionViewCell: CollectionViewFullWidthCell {

    @IBOutlet weak var title: UILabel!

}

extension SectionHeaderCollectionViewCell: BindableCell {
    static func makeBinder(value title: String) -> CellBinder {
        return CellBinder(
            cellType: SectionHeaderCollectionViewCell.self,
            registrationMethod: .nib(UINib(nibName: "SectionHeaderCollectionViewCell", bundle: nil)),
            reuseIdentifier: "SectionHeaderCollectionViewCell",
            configureCell: { cell in
                cell.title.text = title
        })
    }
}

//
//  CollectionViewFullWidthCell.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 12/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit

class CollectionViewFullWidthCell: UICollectionViewCell {
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        guard let superview = superview else {
            return layoutAttributes
        }
        
        var targetSize = UIView.layoutFittingCompressedSize
        targetSize.width = floor(superview.frame.width / CGFloat(numberOfColumns))
        
        layoutAttributes.size = contentView.systemLayoutSizeFitting(
            targetSize,
            withHorizontalFittingPriority: .required,
            verticalFittingPriority: .fittingSizeLevel)
        
        return layoutAttributes
    }
    
    var numberOfColumns: Int {
        return 1
    }
}

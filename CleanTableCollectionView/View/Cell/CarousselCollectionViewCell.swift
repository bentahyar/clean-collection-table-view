//
//  CarousselCollectionViewCell.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 12/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit
import DataSourceKit
import Alamofire
import AlamofireImage

class CarousselCollectionViewCell: CollectionViewFullWidthCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 2
    }
    
    override var numberOfColumns: Int {
        return 2
    }

}

extension CarousselCollectionViewCell:  BindableCell {
    static func makeBinder(value caroussel: Caroussel) -> CellBinder {
        return CellBinder(
            cellType: CarousselCollectionViewCell.self,
            registrationMethod: .nib(UINib(nibName: "CarousselCollectionViewCell", bundle: nil)),
            reuseIdentifier: "CarousselCollectionViewCell",
            configureCell: { cell in
                cell.title.text = caroussel.title
                
                Alamofire.request("https://img.duniaku.net/2017/12/1513739410-kamen-rider-1-700x394.jpg").responseImage { response in
                    if let image = response.result.value {
                        cell.imageView.image = image
                    }
                }
        })
    }
}

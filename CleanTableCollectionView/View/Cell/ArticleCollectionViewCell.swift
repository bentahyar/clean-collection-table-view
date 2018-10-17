//
//  ArticleCollectionViewCell.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 12/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit
import DataSourceKit
import Alamofire
import AlamofireImage

class ArticleCollectionViewCell: CollectionViewFullWidthCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

extension ArticleCollectionViewCell:  BindableCell {
    static func makeBinder(value article: Article) -> CellBinder {
        return CellBinder(
            cellType: ArticleCollectionViewCell.self,
            registrationMethod: .nib(UINib(nibName: "ArticleCollectionViewCell", bundle: nil)),
            reuseIdentifier: "ArticleCollectionViewCell",
            configureCell: { cell in
                cell.title.text = article.title
                cell.content.text = article.content
                
                Alamofire.request("https://img.duniaku.net/2017/12/1513739410-kamen-rider-1-700x394.jpg").responseImage { response in
                    if let image = response.result.value {
                        cell.imageView.image = image
                    }
                }
        })
    }
}

//
//  ViewController.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 11/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit
import DataSourceKit
import CoreData

class ViewController: UIViewController, View {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private(set) var alertView: UIAlertController?
    private(set) var data: [News]?
    
    var presenter: ViewEventHandler?
    
    let dataSource = CollectionViewDataSource()
    
    init() {
        super.init(nibName: "ViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("View Controller Deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureNavigation()
        
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter?.loadNews()
        
        self.collectionView.reloadData()
    }
    
    fileprivate func configureNavigation() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "ADD", style: .done, target: self, action: #selector(addTapped))
    }
    
    fileprivate func configureUI() {
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumInteritemSpacing = 0
        collectionView.dataSource = dataSource
        collectionView.delegate = self
    }
    
    @objc fileprivate func addTapped() {
        presenter?.navigateToAddNews(withNavController: self.navigationController!)
    }
    
    // View Method
    func showData(withData data: [News]) {
        self.data = data
        
        dataSource.cellDeclarations = cellDeclarations
    }
    
    func showAlert(withTitle title: String, withType type: String) {
        let alert = UIAlertController(title: nil, message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        alertView = alert
        
        present(alert, animated: true, completion: nil)
    }
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let news = data else {
            return
        }
        
        showAlert(withTitle: news[indexPath.row].title, withType: "NEWS")
    }
}

extension ViewController: CellsDeclarator {
    func declareCells(_ cell: (CellBinder) -> Void) {
        guard let news = data else {
            return
        }
        
        for individualNews in news {
            switch individualNews {
                case is Article:
                    cell(ArticleCollectionViewCell.makeBinder(value: individualNews as! Article))
                    break
                case is Feed:
                    cell(FeedCollectionViewCell.makeBinder(value: individualNews as! Feed))
                    break
                case is Caroussel:
                    cell(CarousselCollectionViewCell.makeBinder(value: individualNews as! Caroussel))
                    break
                
                default: break
            }
        }
    }
}


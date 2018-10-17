//
//  ViewWireframe.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit

class ViewWireframe {
    var viewController: UIViewController {
        let view = ViewController()
        let interactor = ViewInteractor()
        let presenter = ViewPresenter(interactor: interactor, router: self)
        let navigationController = UINavigationController(rootViewController: view)
        
        presenter.view = view
        view.presenter = presenter
        interactor.output = presenter
        
        view.loadViewIfNeeded()
        
        return navigationController
    }
    
    deinit {
        print("View Wireframe Deinit")
    }
}

//
//  AddNewsWireframe.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit

class AddNewsWireframe {
    var viewController: UIViewController {
        let view = AddNewsViewController()
        let interactor = AddNewsViewInteractor()
        let presenter = AddNewsViewPresenter(interactor: interactor, router: self)
        let navigationController = UINavigationController(rootViewController: view)
        
        presenter.view = view
        view.presenter = presenter
        interactor.output = presenter
        
        return navigationController
    }
    
    deinit {
        print("Add News Wireframe Deinit")
    }
    
    func presentAddNews(withNavController navigationController: UINavigationController) {
        navigationController.present(viewController, animated: true, completion: nil)
    }
}

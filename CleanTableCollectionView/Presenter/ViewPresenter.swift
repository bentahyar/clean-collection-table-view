//
//  ViewPresenter.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 15/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

class ViewPresenter: ViewInteractorOutput, ViewEventHandler {
    
    let interactor: ViewInteractorInput
    weak var view: ViewController?
    
    let router: ViewWireframe
    
    init(interactor: ViewInteractorInput, router: ViewWireframe) {
        self.interactor = interactor
        self.router = router
    }
    
    //Output Method
    func successAddData(withData data: [News]) {
        view?.showData(withData: data)
    }
    
    //Event Handler Method
    func itemDidClicked(withTitle title: String, withType type: String) {
        view?.showAlert(withTitle: title, withType: type)
    }
    
    func loadNews() {
        interactor.addData()
    }
}

//
//  AddNewsViewPresenter.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation

class AddNewsViewPresenter: AddNewsViewInteractorOutput, AddNewsViewEventHandler {
    let interactor: AddNewsViewInteractorInput
    weak var view: AddNewsViewController?
    
    let router: AddNewsWireframe
    
    init(interactor: AddNewsViewInteractorInput, router: AddNewsWireframe) {
        self.interactor = interactor
        self.router = router
    }
    
    deinit {
        print("Add News View Presenter Deinit")
    }
    
    //Event Handler Method
    func addNews(withId id: String, withTitle title: String, withDesc desc: String, withType type: String) {
        interactor.addData(withId: id, withTitle: title, withDesc: desc, withType: type)
    }
    
    
    //Output Method
    func successAddData() {
        view?.dismiss(animated: true, completion: nil)
    }
}

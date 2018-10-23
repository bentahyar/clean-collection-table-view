//
//  AddNewsInteractor.swift
//
//
//  Created by Benedict on 22/10/18.
//

import Foundation

class AddNewsViewInteractor: AddNewsViewInteractorInput {
    weak var output: AddNewsViewInteractorOutput?
    
    deinit {
        print("Add News View Interactor Deinit")
    }
    
    func addData(withId id: String, withTitle title: String, withDesc desc: String, withType type: String) {
        DBHelper.shared.createNews(withId: id, withTitle: title, withDesc: desc, withType: type)
        
        output?.successAddData()
    }
}

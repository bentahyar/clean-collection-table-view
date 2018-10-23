//
//  AddNewsViewController.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit

class AddNewsViewController: UIViewController, AddNewsView {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    
    var presenter: AddNewsViewEventHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "DONE", style: .done, target: self, action: #selector(doneTapped))
    }
    
    deinit {
        print("Add News View Controller Deinit")
    }
    
    @objc func doneTapped() {
        guard let id = idTextField.text, let title = titleTextField.text, let desc = descTextField.text, let type = typeTextField.text else {
            return
        }
        
        presenter?.addNews(withId: id, withTitle: title, withDesc: desc, withType: type)
    }

}

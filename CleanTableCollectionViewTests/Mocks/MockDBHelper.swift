//
//  MockDBHelper.swift
//  CleanTableCollectionViewTests
//
//  Created by Benedict on 23/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import UIKit
import CoreData
@testable import CleanTableCollectionView

class MockDBHelper: DBHelper {
    var invokedAppDelegateGetter = false
    var invokedAppDelegateGetterCount = 0
    var stubbedAppDelegate: AppDelegate!
    override var appDelegate: AppDelegate {
        invokedAppDelegateGetter = true
        invokedAppDelegateGetterCount += 1
        return stubbedAppDelegate
    }
    var invokedContextGetter = false
    var invokedContextGetterCount = 0
    var stubbedContext: NSManagedObjectContext!
    override var context: NSManagedObjectContext {
        invokedContextGetter = true
        invokedContextGetterCount += 1
        return stubbedContext
    }
    var invokedEntityGetter = false
    var invokedEntityGetterCount = 0
    var stubbedEntity: NSEntityDescription!
    override var entity: NSEntityDescription {
        invokedEntityGetter = true
        invokedEntityGetterCount += 1
        return stubbedEntity
    }
    var invokedCreateNews = false
    var invokedCreateNewsCount = 0
    var invokedCreateNewsParameters: (id: String, title: String, desc: String, type: String)?
    var invokedCreateNewsParametersList = [(id: String, title: String, desc: String, type: String)]()
    override func createNews(withId id: String, withTitle title: String, withDesc desc: String, withType type: String) {
        invokedCreateNews = true
        invokedCreateNewsCount += 1
        invokedCreateNewsParameters = (id, title, desc, type)
        invokedCreateNewsParametersList.append((id, title, desc, type))
    }
    var invokedReadNews = false
    var invokedReadNewsCount = 0
    var stubbedReadNewsResult: [News]! = []
    override func readNews() -> [News] {
        invokedReadNews = true
        invokedReadNewsCount += 1
        return stubbedReadNewsResult
    }
}

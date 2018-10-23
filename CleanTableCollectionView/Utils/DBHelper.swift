//
//  File.swift
//  CleanTableCollectionView
//
//  Created by Benedict on 22/10/18.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit
import CoreData

private enum Constants {
    static let entity: String = "NewsEntity"
    static let id: String = "id"
    static let title: String = "title"
    static let desc: String = "desc"
    static let type: String = "type"
}

class DBHelper {
    private(set) var appDelegate: AppDelegate
    private(set) var context: NSManagedObjectContext
    private(set) var entity: NSEntityDescription
    
    static let shared = DBHelper()
    
    init() {
        appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        context = appDelegate.persistentContainer.viewContext
        
        entity = NSEntityDescription.entity(forEntityName: Constants.entity, in: context)!
    }
    
    func createNews(withId id: String, withTitle title: String, withDesc desc: String, withType type: String) {
        
        let newsDb = NSManagedObject(entity: entity, insertInto: context)
        
        newsDb.setValue(id, forKey: Constants.id)
        newsDb.setValue(title, forKey: Constants.title)
        newsDb.setValue(type, forKey: Constants.type)
        newsDb.setValue(desc, forKey: Constants.desc)
        
        do {
            try context.save()
            print("Success saving")
        } catch {
            print("Failed saving")
        }
    }
    
    func readNews() -> [News] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: Constants.entity)
        
        request.returnsObjectsAsFaults = false
        
        var news: [News] = []
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                if data.value(forKey: Constants.type) as? String == "Article" {
                    let article = Article(id: data.value(forKey: Constants.id) as! String, content: data.value(forKey: Constants.desc) as! String, title: data.value(forKey: Constants.title) as! String)
                    
                    news.append(article)
                } else if data.value(forKey: Constants.type) as? String == "Feed" {
                    let feed = Feed(desc: data.value(forKey: Constants.desc) as! String, id: data.value(forKey: Constants.id) as! String, title: data.value(forKey: Constants.title) as! String)
                    
                    news.append(feed)
                } else {
                    let caroussel = Caroussel(id: data.value(forKey: Constants.id) as! String, image: data.value(forKey: Constants.desc) as! String, title: data.value(forKey: Constants.title) as! String)
                    
                    news.append(caroussel)
                }
            }
            
            return news
        } catch {
            print("Failed")
            
            return []
        }
    }
    
    func deleteAllData() {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: Constants.entity)
        
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                context.delete(data)
            }
        } catch {
            print("Failed To Delete Data")
        }
    }
}

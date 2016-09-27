//
//  EbayApi.swift
//  EbayBookListing
//
//  Created by Daniel Kwolek on 9/26/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation
import CoreData


enum EbayItemResult {
    case Success([EbayItem])
    case Failure(Error)
}


struct EbayApi {
    static let ebayURL = URL(string: "http://de-coding-test.s3.amazonaws.com/books.json")!
    
    static func resultWithEbayItemsFromJSON(_ data: Data, inContext context: NSManagedObjectContext) -> EbayItemResult {
        var returnedArray = [EbayItem]()
        do {
            let jsonArray = try JSONSerialization.jsonObject(with: data, options: [])  as! [[String: AnyObject]]
            for item in jsonArray {
                returnedArray.append((ebayItemFromJSONDictionary(item, inContext: context) ?? nil)!)
            }
        } catch let error {
            return .Failure(error)
        }
        return .Success(returnedArray)
    }
    
    
    
    private static func ebayItemFromJSONDictionary(_ dictionary: [String: AnyObject], inContext Context: NSManagedObjectContext) -> EbayItem? {
        guard let title = dictionary["title"] as? String else {
            return nil
        }
        let author = dictionary["author"] as? String
        let imageurl = NSURL(string: (dictionary["imageURL"] as! String))
        return EbayItem(title: title, author: author, imageURL: imageurl)
    }
}








//
//struct EbayApi {
//    static let streamURL: URL = URL(string: "http://de-coding-test.s3.amazonaws.com/books.json")!
//    
//    enum Error: Swift.Error {
//        case invalidJsonData
//    }
//    
//    static func itemFromJSONData(_ data: Data,
//                                 inContext context: NSManagedObjectContext) -> ItemsResult {
//        do {
//            let jsonObject: Any = try JSONSerialization.jsonObject(with: data, options: [])
//            guard let itemDictionariesArray = jsonObject as? [[String: NSObject]] else {
//                return .failure(Error.invalidJsonData)
//            }
//            
//            var actualItems = [EbayItem]()
//            for postJSON in itemDictionariesArray {
//                if let post = itemFromJSONData(postJSON, inContext: context)
//                {
//                    actualItems.append(post)
//                }
//            }
//            
//            if actualItems.count != itemDictionariesArray.count {
//                return .failure(Error.invalidJsonData)
//            }
//            return
//            
//        } catch let error {
//            throw error
//        }
//    }
//    
//}

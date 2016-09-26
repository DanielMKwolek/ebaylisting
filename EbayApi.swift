//
//  EbayApi.swift
//  EbayBookListing
//
//  Created by Daniel Kwolek on 9/26/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation
import CoreData

struct EbayApi {
    static let streamURL: URL = URL(string: "http://de-coding-test.s3.amazonaws.com/books.json")!
    
    enum Error: Swift.Error {
        case invalidJsonData
    }
    
    
    static func itemsFromJSONData(_ data: Data,
                       inContext context: NSManagedObjectContext) -> [EbayItem] {
        
        
        return []
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

//
//  EbayItemStore.swift
//  EbayBookListing
//
//  Created by Daniel Kwolek on 9/26/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation
import CoreData

enum ItemResult {
    case Success([EbayItem])
    case Failure(Error)
}

enum ItemError: Error {
    case ItemCreationError
}

class EbayItemStore {
    static var mainDataStack = CoreDataStack.init(modelName: "EbayItemStore")
    
}

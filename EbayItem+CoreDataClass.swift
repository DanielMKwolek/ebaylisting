//
//  EbayItem+CoreDataClass.swift
//  EbayBookListing
//
//  Created by Daniel Kwolek on 9/26/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation
import CoreData


public class EbayItem: NSManagedObject {
    
    
    
    init(title: String, author: String?, imageURL: NSURL?) {
        super.init(entity: EbayItem.entity(), insertInto:  )
        self.title = title
        self.author = author
        self.imageUrl = imageURL
    }
}

//
//  EbayItem+CoreDataProperties.swift
//  EbayBookListing
//
//  Created by Daniel Kwolek on 9/26/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation
import CoreData


extension EbayItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<EbayItem> {
        return NSFetchRequest<EbayItem>(entityName: "EbayItem");
    }

    @NSManaged public var title: String
    @NSManaged public var thumbnailKey: String?
    @NSManaged public var author: String?
    @NSManaged public var imageUrl: String?

}

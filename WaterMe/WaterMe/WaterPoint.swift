//
//  WaterPoint.swift
//  WaterMe
//
//  Created by Jason Zavala & Kidus Yohannes on 5/12/20.
//  Copyright © 2020 Ultron. All rights reserved.
//

import Foundation
import CoreData

/*
 This class represents our database object.
 
 */
public class WaterPoint: NSManagedObject, Identifiable{
    @NSManaged public var created:Date?
    @NSManaged public var intake:NSNumber?
}

extension WaterPoint{
    //this will return all our waterpoints sorted by date
    static func getAllWaterPoints() -> NSFetchRequest<WaterPoint> {
        
        let request:NSFetchRequest<WaterPoint> = WaterPoint.fetchRequest() as! NSFetchRequest<WaterPoint>
        
        let sortDesc = NSSortDescriptor(key: "created", ascending: true) //query, sort, and return data on key: created
        
        request.sortDescriptors = [sortDesc]
        return request
    }
    
}


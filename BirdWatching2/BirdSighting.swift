//
//  BirdSighting.swift
//  BirdWatching2
//
//  Created by akiyan on 2014/07/22.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import Foundation

class BirdSighting: NSObject {
    var name = ""
    var location = ""
    var date = NSDate()
    
    init(name:String, location:String, date:NSDate) {
        self.name = name
        self.location = location
        self.date = date
    }
    
    
}

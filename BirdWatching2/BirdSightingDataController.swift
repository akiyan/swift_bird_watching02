//
//  BirdSightingDataController.swift
//  BirdWatching2
//
//  Created by akiyan on 2014/07/23.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class BirdSightingDataController: NSObject {
    var masterBirdSightingList = Array<BirdSighting>()
    
    init() {
        super.init()
        var sightingList = Array<BirdSighting>()
        self.masterBirdSightingList = sightingList
        var today = NSDate()
        var sighting = BirdSighting(name: "Pigeon", location: "Everywhere", date: today)
        self.addBirdSightingWithSighting(sighting)
    }
    
    func setMasterBirdSightingList(newList: Array<BirdSighting>) {
        self.masterBirdSightingList = newList
    }
    
    func countOfList() -> Int {
        return self.masterBirdSightingList.count
    }
    
    func objectInListAtIndex(theIndex:Int) -> BirdSighting {
        return self.masterBirdSightingList[theIndex]
    }
    
    func addBirdSightingWithSighting(sighting:BirdSighting) {
        self.masterBirdSightingList.append(sighting)
    }

        /*
        - (void)initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    self.masterBirdSightingList = sightingList;
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    sighting = [[BirdSighting alloc] initWithName:@"Pigeon"
    location:@"Everywhere" date:today];
    [self addBirdSightingWithSighting:sighting];
    }
*/
}

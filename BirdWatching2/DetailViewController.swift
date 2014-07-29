//
//  DetailViewController.swift
//  BirdWatching2
//
//  Created by akiyan on 2014/07/22.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
                            
//    @IBOutlet weak var detailDescriptionLabel: UILabel!
//
//
//    var detailItem: AnyObject? {
//        didSet {
//            // Update the view.
//            self.configureView()
//        }
//    }
    
    var sighting:BirdSighting?
    @IBOutlet weak var birdNameLabel:UILabel!
    @IBOutlet weak var locationLabel:UILabel!
    @IBOutlet weak var dateLabel:UILabel!
    
    func setSighting(newSighting:BirdSighting) {
        self.sighting = newSighting
    }

    func configureView() {
        let theSighting = self.sighting
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.MediumStyle
        self.birdNameLabel.text = theSighting?.name
        self.locationLabel.text = theSighting?.location
        self.dateLabel.text = formatter.stringFromDate(theSighting?.date)
        // Update the user interface for the detail item.
//        if let detail: AnyObject = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


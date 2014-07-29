//
//  MasterViewController.swift
//  BirdWatching2
//
//  Created by akiyan on 2014/07/22.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

//    var objects = NSMutableArray()
    var dataController = BirdSightingDataController()
    
    @IBAction func done(segue:UIStoryboardSegue) {
        if segue.identifier == "ReturnInput" {
            let addController = segue.sourceViewController as AddSightingViewController
            if addController.birdSighting {
                self.dataController.addBirdSightingWithSighting(addController.birdSighting as BirdSighting)
                self.tableView.reloadData()
            }
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }

    @IBAction func cancel(segue:UIStoryboardSegue) {
        if segue.identifier == "CancelInput" {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationItem.leftBarButtonItem = self.editButtonItem()
//
//        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
//        self.navigationItem.rightBarButtonItem = addButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func insertNewObject(sender: AnyObject) {
//        if objects == nil {
//            objects = NSMutableArray()
//        }
//        objects.insertObject(NSDate.date(), atIndex: 0)
//        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
//        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
//    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSightingDetails" {
            let detailViewController = segue.destinationViewController as DetailViewController
            detailViewController.sighting = self.dataController.objectInListAtIndex(self.tableView.indexPathForSelectedRow().row)
        }
//        if segue.identifier == "showDetail" {
//            let indexPath = self.tableView.indexPathForSelectedRow()
//            let object = objects[indexPath.row] as NSDate
//            (segue.destinationViewController as DetailViewController).detailItem = object
//        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataController.countOfList()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIdentifier = "BirdSightingCell"
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.MediumStyle
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as UITableViewCell
        let sightingAtIndex = self.dataController.objectInListAtIndex(indexPath.row)
        cell.textLabel.text = sightingAtIndex.name
        cell.detailTextLabel.text = formatter.stringFromDate(sightingAtIndex.date)
        return cell
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
//
//        let object = objects[indexPath.row] as NSDate
//        cell.textLabel.text = object.description
//        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }

//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            objects.removeObjectAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//        }
//    }


}


//
//  MainTableViewController.swift
//  Chart
//
//  Created by Mike Revoir on 3/18/16.
//  Copyright © 2016 Duke Institute for Health Innovation. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var chartCell: ChartTableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chartCell = tableView.dequeueReusableCellWithIdentifier("ChartTableViewCell") as! ChartTableViewCell
        chartCell.configureChart()

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return chartCell
    }

}

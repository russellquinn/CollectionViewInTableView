//
//  TableViewController.swift
//  CollectionViewInTableView
//
//  Created by Russell Quinn on 11/21/18.
//  Copyright © 2018 False Vacuum Industries. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let reuseIdentifier1 = "CustomTableViewCell"
    let reuseIdentifier2 = "CustomTableViewCellWithCollectionView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 20
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: reuseIdentifier1)
        tableView.register(CustomTableViewCellWithCollectionView.self, forCellReuseIdentifier: reuseIdentifier2)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var reuseIdentifier = reuseIdentifier1
        
        if (indexPath.row == self.tableView(tableView, numberOfRowsInSection: indexPath.section) - 1) {
            reuseIdentifier = reuseIdentifier2
        }
        
        return self.tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
    }
}

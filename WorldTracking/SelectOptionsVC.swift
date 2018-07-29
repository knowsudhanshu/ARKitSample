//
//  SelectOptionsVC.swift
//  WorldTracking
//
//  Created by Sudhanshu Srivastava on 29/07/18.
//  Copyright © 2018 Sudhanshu Srivastava. All rights reserved.
//

import UIKit

class SelectOptionsVC: UITableViewController {

    let optionsArr : [String] = ["Word Tracking", "Object Detection"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Augmented Reality"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        (self.view as! UITableView).register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return optionsArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.text = optionsArr[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: WorldTrackingVC.storyboardId) else {return}
            vc.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(vc, animated: true)
            
        case 1:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: ObjectDetectionVC.storyboardId) else {return}
            vc.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        default:
            break
        }
    }

}
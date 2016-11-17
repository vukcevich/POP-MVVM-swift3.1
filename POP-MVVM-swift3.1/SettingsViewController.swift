//
//  SettingsViewController.swift
//  POP-MVVM-swift3.1
//
//  Created by Marijan Vukcevich on 11/17/16.
//  Copyright © 2016 MagTek. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UITableViewController {
    
    enum Setting: Int {
        case MinionMode
        //other settings here
    }
    
    //Mark: Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let setting = Setting(rawValue: indexPath.row) {
            switch setting {
            case .MinionMode:
                let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchWithTextTableViewCell", for: indexPath) as! SwitchWithTextTableViewCell
                
                let viewModel = MinionModeViewModel()
                cell.confugure(withDataSource: viewModel, delegate: viewModel)
                return cell
            }
        }
        return tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
    }
    
    
    
    
}

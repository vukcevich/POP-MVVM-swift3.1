//
//  MinionModeViewModel.swift
//  POP-MVVM-swift3.1
//
//  Created by Marijan Vukcevich on 11/17/16.
//  Copyright © 2016 MagTek. All rights reserved.
//

import Foundation
import UIKit

struct MinionModeViewModel: SwitchWithTextCellDataSource {
    
    var title = "Minion Mode!!!"
    var switchOn = true
    
    
}

extension MinionModeViewModel: SwitchWithTextCellDelegate {
   
    func onSwitchTogleOn(on: Bool) {
        if on {
            print("The Minions are here to stay!")
        } else {
            print("The Minions went out to play!")
        }
    }
    var switchColor: UIColor {
        return .yellow
    }
}

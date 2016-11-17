//
//  SwitchWithTextTableViewCell.swift
//  POP-MVVM-swift3.1
//
//  Created by Marijan Vukcevich on 11/17/16.
//  Copyright © 2016 MagTek. All rights reserved.
//

import UIKit
import Foundation


protocol SwitchWithTextCellDataSource {
    var title: String { get }
    var switchOn: Bool { get }
}

protocol SwitchWithTextCellDelegate {
    func onSwitchTogleOn(on: Bool)
    
    var switchColor: UIColor { get }
    var textColor: UIColor { get }
    var font: UIFont { get }
}

extension SwitchWithTextCellDelegate {
    var switchColor: UIColor {
        return .purple
    }
    
    var textColor: UIColor {
        return .black    }
    
    var font: UIFont {
        return .systemFont(ofSize: 17)
    }
    
}


class SwitchWithTextTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var switchToggle: UISwitch!
    
    private var dataSource: SwitchWithTextCellDataSource?
    private var delegate: SwitchWithTextCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func confugure(withDataSource dataSource:SwitchWithTextCellDataSource, delegate: SwitchWithTextCellDelegate?) {
        self.dataSource = dataSource
        self.delegate = delegate
        
        label.text = dataSource.title
        switchToggle.isOn = dataSource.switchOn
        
        switchToggle.onTintColor = delegate?.switchColor
    }
    
    @IBAction func onSwitchToggle(sender:UISwitch) {
        delegate?.onSwitchTogleOn(on: sender.isOn)
    }
    
}

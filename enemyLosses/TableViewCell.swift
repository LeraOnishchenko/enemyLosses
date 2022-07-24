//
//  TableViewCell.swift
//  enemyLosses
//
//  Created by lera on 24.07.2022.
//

import UIKit
import Networking

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var date: UILabel!
    func config(from data: Equipment){
        self.date.text = data.date
    }
}


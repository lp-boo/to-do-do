//
//  NewCell.swift
//  ToDo`last vershion'
//
//  Created by Moby on 17.01.22.
//


import Foundation
import UIKit

class NewCell: UITableViewCell {
    
    @IBOutlet weak var userLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userLabel.backgroundColor = .systemTeal
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
}




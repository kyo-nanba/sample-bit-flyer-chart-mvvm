//
//  ThemeColorTableViewCell.swift
//  bit-flyer-chart-mvvm
//
//  Created by kyo on 2017/10/05.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ThemeColorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var colorView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        let color = colorView.backgroundColor
        super.setSelected(selected, animated: animated)
        
        if(selected) {
            colorView.backgroundColor = color
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        let color = colorView.backgroundColor
        super.setHighlighted(highlighted, animated: animated)
        
        if(highlighted) {
            colorView.backgroundColor = color
        }
    }
}

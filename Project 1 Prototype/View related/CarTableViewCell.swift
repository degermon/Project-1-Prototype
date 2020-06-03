//
//  CarTableViewCell.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-03.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var finishDateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setCarLabelText(with: String?) {
        guard let text = with else {
            carLabel.text = ""
            return
        }
        carLabel.text = text
    }
    
    func setModelLabelText(with: String?) {
        guard let text = with else {
            modelLabel.text = ""
            return
        }
        modelLabel.text = text
    }
    
    func setStartDateLabelText(with: String?) {
        guard let text = with else {
            startDateLabel.text = "No data"
            return
        }
        startDateLabel.text = text
    }
    
    func setFinishDateLabelText(with: String?) {
        guard let text = with else {
            finishDateLabel.text = "No data"
            return
        }
        finishDateLabel.text = text
    }
}

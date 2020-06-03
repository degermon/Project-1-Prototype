//
//  DetailedViewController.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-03.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var carDetailedInfo: CarRequestStruct?

    override func viewDidLoad() {
        super.viewDidLoad()
        showDetailedInfo()
    }
    
    func showDetailedInfo() {
        guard let info = carDetailedInfo else {
            return
        }
        textView.text = "\(formatText(forInfo: info))"
    }
    
    func formatText(forInfo: CarRequestStruct) -> String {  // dumb way to fliter only existing info/entries
        var result = ""
        
        if let item = forInfo.auto {
            result.append("Auto: \(item)\n")
        }
        if let item = forInfo.model {
            result.append("Model: \(item)\n")
        }
        if let item = forInfo.barcode {
            result.append("Barcode: \(item)\n")
        }
        if let item = forInfo.fullmodel {
            result.append("Fullmodel: \(item)\n")
        }
        if let item = forInfo.years {
            result.append("Year: \(item)\n")
        }
        if let item = forInfo.id {
            result.append("Id: \(item)\n")
        }
        if let item = forInfo.kebulas {
            result.append("Kebulas: \(item)\n")
        }
        if let item = forInfo.serija {
            result.append("Serija: \(item)\n")
        }
        if let item = forInfo.spalva {
            result.append("Spalva: \(item)\n")
        }
        if let item = forInfo.spalvosKodas {
            result.append("Spalvos kodas: \(item)\n")
        }
        if let item = forInfo.vin {
            result.append("Vin: \(item)\n")
        }
        if let item = forInfo.start {
            result.append("Start: \(item)\n")
        }
        if let item = forInfo.finish {
            result.append("Finish: \(item)\n")
        }
        if let item = forInfo.dataFinish {
            result.append("Finish data: \(item)\n")
        }
        if let item = forInfo.komentras {
            result.append("Comment: \(item)\n")
        }
        
        return result
    }
}

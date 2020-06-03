//
//  VCTableViewExt.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-03.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carRequestData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: carTVCIdentifier, for: indexPath) as? CarTableViewCell else {
            return UITableViewCell()
        }
        
        let carDataForCurrentIndex = carRequestData[indexPath.row]
        cell.setCarLabelText(with: carDataForCurrentIndex.auto)
        cell.setModelLabelText(with: carDataForCurrentIndex.model)
        cell.setStartDateLabelText(with: carDataForCurrentIndex.start)
        cell.setFinishDateLabelText(with: carDataForCurrentIndex.finish)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let destinationVC = storyboard?.instantiateViewController(withIdentifier: "showDetailedInfo") as? DetailedViewController else {
            return
        }
        
        destinationVC.carDetailedInfo = carRequestData[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
}

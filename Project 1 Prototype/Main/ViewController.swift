//
//  ViewController.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-02.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let networkRelated = NetworkRelatedClass()
    private let dataParsing = DataParsingClass()
    private let dbLink = "http://www.blackbee.lt/a.php"
    var carRequestData: [CarRequestStruct] = []
    let carTVCIdentifier = "carCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        readDataFrom(url: dbLink)
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: "CarTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: carTVCIdentifier)
    }
    
    func readDataFrom(url: String) {
        networkRelated.readJson(fromURL: dbLink, completion: { (result) in
            guard let result = result else { return }
            self.dataParsing.parseDataOfCarRequest(fromData: result) { (parsedResult) in
                self.carRequestData = parsedResult
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        })
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        readDataFrom(url: dbLink)
    }
}


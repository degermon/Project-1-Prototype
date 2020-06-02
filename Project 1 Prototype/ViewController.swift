//
//  ViewController.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-02.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let networkRelated = NetworkRelatedClass()
    private let dbLink = "http://www.blackbee.lt/a.php"

    override func viewDidLoad() {
        super.viewDidLoad()
        readDataFrom(url: dbLink)
    }
    
    func readDataFrom(url: String) {
        networkRelated.readJson(fromURL: dbLink, completion: { (result) in
            guard let result = result else {
                return
            }
            print(result)
        })
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        readDataFrom(url: dbLink)
    }
}


//
//  NetworkRelatedClass.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-02.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import Foundation

class NetworkRelatedClass {
    
    func readJson(fromURL: String, completion: @escaping (_ response: String?) -> ()) {
        if let url = URL(string: fromURL) {
           URLSession.shared.dataTask(with: url) { data, response, error in
              if let data = data {
                 if let jsonString = String(data: data, encoding: .utf8) {
                    completion(jsonString)
                 }
               }
           }.resume()
        }
    }
}

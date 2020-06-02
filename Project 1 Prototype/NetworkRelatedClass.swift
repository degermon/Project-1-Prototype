//
//  NetworkRelatedClass.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-02.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import Foundation

class NetworkRelatedClass {
    func readJson(fromURL: String, completion: @escaping (_ data: Data?) -> ()) {
        if let url = URL(string: fromURL) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                completion(data)
           }.resume()
        }
    }
}

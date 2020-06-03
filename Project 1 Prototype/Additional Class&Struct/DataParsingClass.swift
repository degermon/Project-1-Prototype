//
//  DataParsingClass.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-02.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import Foundation

class DataParsingClass {
    func parseDataOfCarRequest(fromData: Data, completion: @escaping (_ result: [CarRequestStruct]) -> ()) {
        let decoder = JSONDecoder()
        do {
            let parsedArray = try decoder.decode([CarRequestStruct].self, from: fromData)
            completion(parsedArray)
        } catch let parseErr {
            print(parseErr)
        }
    }
}

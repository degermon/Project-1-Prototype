//
//  CarRequestStruct.swift
//  Project 1 Prototype
//
//  Created by Daniel Šuškevič on 2020-06-02.
//  Copyright © 2020 Daniel Šuškevič. All rights reserved.
//

import Foundation

struct CarRequestStruct: Codable {
    let id: String?
    let vin: String?
    let auto: String?
    let model: String?
    let years: String?
    let fullmodel: String?
    let barcode: String?
    let serija: String?
    let kebulas: String?
    let spalva: String?
    let spalvosKodas: String?
    let komentras: String?
    let start: String?
    let finish: String?
    let dataFinish: String?
}

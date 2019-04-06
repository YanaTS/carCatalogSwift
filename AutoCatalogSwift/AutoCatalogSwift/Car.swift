//
//  Car.swift
//  AutoCatalogSwift
//
//  Created by Student on 02/04/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

class Car: Codable {
    enum Property: String {
        case year
        case model
        case manufactures
        case `class`
        case bodyType
        
        static let allValues: [Property] = [.year, .model, .manufactures, .class, .bodyType]
    }
    
    private var data: [ String] = []
    
    subscript(property: Property) -> String {
        get {
            if let index = Property.allValues.firstIndex(of: property), index < data.count {
                return data[index]
            }
            return""
        }
        set {
            if let index = Property.allValues.firstIndex(of: property) {
                while index >= data.count {
                    data.append("")
                }
                data[index] = newValue
            }
        }
    }
    
    init() {
        data = [String](repeating: "", count: Property.allValues.count)
    }
    required init(from decoder: Decoder) throws {
        let container =  try decoder.singleValueContainer()
        data = try container.decode([String].self)
        //        for (key, value) in data {
        //            self.data[Property(rawValue: key)!] = value
        //        }
    }
    func encode (to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(data)
        
        //        var result: [String: String] = [:]
        //        for(key, value) in data {
        //            result[key.rawValue] = value
        //        }
        
        //        let result = data.reduce(into: [String: String](), {acc, pair in acc[pair.key.rawValue] = pair.value
        //
        //        })
        
        //        try container.encode(result)
    }
    
    func showAllCars () {
        
    }
    
}








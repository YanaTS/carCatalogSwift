//
//  CarStorage.swift
//  AutoCatalogSwift
//
//  Created by Student on 02/04/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation


class CarsStorage {
    private lazy var fileUrl: URL = {
        let directory = FileManager.default.homeDirectoryForCurrentUser
        return directory.appendingPathComponent("cars.data")
        
    }()
    private var cars: [Car] = []
    
    
    init() {
        load()
    }
    
    func append(car:Car) -> Bool {
        assert(!cars.contains(where: {car === $0}))
        cars.append(car)
        return save()
    }
    
    func remove(car:Car) -> Bool{
        assert(!cars.contains(where: {car === $0}))
        cars.removeAll(where: {
            $0 === car
        })
        //cars.removeAll {$0 === car}
        return save()
    }
    
    func modify(oldCar:Car, newCar:Car) -> Bool{
        assert(!cars.contains(where: {oldCar === $0}))
        if let index = cars.firstIndex(where: {oldCar === $0}) {
            cars[index] = newCar
            return save()
        }
        return false
    }
    
    func save() -> Bool {
        let directory = FileManager.default.homeDirectoryForCurrentUser
        let fileUrl = directory.appendingPathComponent("cars.data")
        
        if let data: Data = try? JSONEncoder().encode(cars) {
            return nil != (try?data.write(to: fileUrl))
        }
        return false
    }
    
    @discardableResult
    func load() -> Bool {
        let directory = FileManager.default.homeDirectoryForCurrentUser
        let fileUrl = directory.appendingPathComponent("cars.data")
        
        if let data = try? Data(contentsOf: fileUrl) {
            if let cars: [Car] = try? JSONDecoder().decode([Car].self, from: data) {
                self.cars = cars
                return true
            }
        }
        return false
        
    }
}

//
//  Console.swift
//  AutoCatalogSwift
//
//  Created by Student on 02/04/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

class Console {
    
    let car = Car()

    func showAllCommands () {
        
        print("""
show all commands - showCommands + enter
show all cars - showCars + enter
add car - addCar + enter
remove car - removeCar + enter
edit car - editCar + enter
exit - exit + enter
""")
    }
    
    func showAllCars (){
        for property in Car.Property.allValues {
            print("\(property.rawValue) = \(car[property])")
        }
    }
    
    func addCar (){
        
    }
    
    func removeCar (){
        
    }
    
    func editCar (){
        
    }
    
    func exit (){
        
    }


}


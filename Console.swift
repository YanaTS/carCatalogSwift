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
        
        print("\nshow all commands - showCommands + enter\nshow all cars - showCars + enter\nadd car - addCar + enter\nremove car - removeCar + enter\nedit car - editCar + enter\nexit - exit + enter")
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


//
//  City.swift
//  Helloglow World
//
//  Created by Fhict on 26/02/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class City {
    
    var name:String
    var population:Int
    var glowActs = [GlowAct]()
    
    init(name: String , population: Int) {
        
        self.name = name
        self.population = population
        
        
        
    }

    
    
    func showInfo(){
        
        print("In the city of \(name) there are currently living \(population) people. Number of Glowacts: \(glowActs.count)")
        
        
            for items in glowActs{
            
                print("Om \(items.startTime) begint \(items.name), deze act heeft een rating van \(items.rating) ")
            
            }
            
        
            
        
        
    }
    
}


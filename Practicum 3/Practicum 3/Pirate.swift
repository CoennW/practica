//
//  Pirate.swift
//  Practicum 3
//
//  Created by Fhict on 10/03/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class Pirate {
    
    var name:String?
    var life:String?
    var yearsActive:String?
    var countryOrigin:String?
    var commentes:String?
    
    
    init(name: String!, life: String, yearsActive: String, countryOrigin:String, comments:String){
    
        self.name = name!
        self.life = life
        self.yearsActive = yearsActive
        self.countryOrigin = countryOrigin
        self.commentes = comments
        
    }
    
}

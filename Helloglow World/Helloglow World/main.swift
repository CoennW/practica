//
//  main.swift
//  Helloglow World
//
//  Created by Fhict on 26/02/16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation



var blueLightAct = GlowAct(name: "The Bluelight Act", rating: 8, startTime: "22:20")
var greenLightAct = GlowAct(name: "The Greenlight Act", rating: 9, startTime: "22:00")

var city = City(name: "Eindhoven", population: 220000)


city.glowActs.append(blueLightAct)
city.glowActs.append(greenLightAct)


city.showInfo()
blueLightAct.showInfo()


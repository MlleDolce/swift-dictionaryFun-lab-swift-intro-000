//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        for (name, preference) in favoriteFlavorsOfIceCream {
            if preference == flavor {
                names.append(name)
            }
        }
        return names
    }
    
    
    // 3.
    func count(forFlavor: String) -> Int {
        var counter: Int = 0
        for (name, flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                counter += 1
            }
        }
        return counter
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        for (name, pref) in favoriteFlavorsOfIceCream {
            if name == person {
                return pref
            }
        }
        return nil
    }
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if let preference = favoriteFlavorsOfIceCream[person] {
           favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    

    // 6.
    func remove(person: String) -> Bool {
        if let guest = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    

    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sentence: String = ""
        for (index, name) in allNames.enumerated() {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if index == 0 {
                    sentence += "\(name) likes \(flavor)"
                } else {
                    sentence += "\n\(name) likes \(flavor)"
                }
            }
        }
        return sentence
    }
    
    
    

}

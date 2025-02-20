//
//  Volunteer.swift
//  SafeWalkVolunteer
//  Lab exercise Created by Paul Inventado on 2/9/22.
//

import Foundation

protocol Volunteer: ObservableObject {
    var name: String { get set }
    var age: Int { get set }
    var maxHours: Int { get }
}

class SafeWalkVolunteer: Volunteer {
    var age: Int
    var name: String
    
    
    init() {
        self.age = 0
        self.name = ""
    }
    init(name: String, age: Int){
        self.age = age
        self.name = name
    }
    var maxHours: Int {
        if age < 18 {
            return 1
        } else {
            return 3
        }
    }
}
/* Screen output: Titan Hall @ 1111 N State College Blvd, Fullerton, CA 92831 */

// TODO: Create a class called SafeWalkVolunteer that implementes the Volunteer protocol.

// TODO: Create an Int maxHours computed property. It is a get-only property that returns 1 if the volunteer's age is less than 18 and returns 3 if the volunteer's age is 18 and over.

// TODO: Create an initializer without parameters that sets name to an empty string and age to 0.

// TODO: Create another initializer that accepts a a String parameter called name and an Int parameter called age. Assign the parameter values to the corresponding properties of the class.

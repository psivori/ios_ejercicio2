//
//  User.swift
//  EjercicioClase8
//
//  Created by Administrador on 6/4/16.
//
//

import Foundation

class User {
    var name : String
    var image : String
    var description : String
    init(d : [String : String]) {
        self.name = d["name"]!
        self.image = d["image"]!
        self.description = d["description"]!
    }
}




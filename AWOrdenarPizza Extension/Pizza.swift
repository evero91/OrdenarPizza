//
//  Pizza.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 01/06/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamano: String = ""
    var masa: String = ""
    var queso: String = ""
    var ingredientes: String = ""
    
    func imprimirPizza() {
        print("Tamaño:          \(tamano)")
        print("Masa:            \(masa)")
        print("Queso:           \(queso)")
        print("Ingredientes:    \(ingredientes)")
    }
}

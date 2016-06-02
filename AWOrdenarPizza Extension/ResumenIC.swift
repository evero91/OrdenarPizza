//
//  ResumenIC.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 02/06/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import WatchKit
import Foundation


class ResumenIC: WKInterfaceController {

    
    @IBOutlet var lblTamano: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    var pizza: Pizza = Pizza()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        lblTamano.setText(pizza.tamano)
        lblMasa.setText(pizza.masa)
        lblQueso.setText(pizza.queso)
        lblIngredientes.setText(pizza.ingredientes)
    }

    @IBAction func ordenar() {
        let action = WKAlertAction(title: "OK", style: .Cancel) {}
        presentAlertControllerWithTitle("Orden exitosa", message: "La pizza ha sido enviada a la cocina", preferredStyle: .ActionSheet, actions: [action])
    }
}

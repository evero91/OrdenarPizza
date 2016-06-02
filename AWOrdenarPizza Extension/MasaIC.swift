//
//  MasaIC.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 01/06/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import WatchKit
import Foundation


class MasaIC: WKInterfaceController {
    
    @IBOutlet var tblMasa: WKInterfaceTable!
    var masas: Array<String> = ["Delgada","Crujiente","Gruesa"]
    var pizza: Pizza = Pizza()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        tblMasa.setNumberOfRows(masas.count, withRowType: "rowMasa")
        for index in 0 ..< masas.count {
            if let controller = tblMasa.rowControllerAtIndex(index) as? MasaRC {
                controller.lblMasa.setText(masas[index])
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        pizza.masa = masas[rowIndex]
        pushControllerWithName("Queso", context: pizza)
    }
}

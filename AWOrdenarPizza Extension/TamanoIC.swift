//
//  TamanoIC.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 01/06/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import WatchKit
import Foundation


class TamanoIC: WKInterfaceController {
    
    @IBOutlet var tblTamanos: WKInterfaceTable!
    var tamanos: Array<String> = ["Chica","Mediana","Grande"]
    var pizza: Pizza = Pizza()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        tblTamanos.setNumberOfRows(tamanos.count, withRowType: "rowTamano")
        for index in 0 ..< tamanos.count {
            if let controller = tblTamanos.rowControllerAtIndex(index) as? TamanoRC {
                controller.lblTamano.setText(tamanos[index])
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        pizza.tamano = tamanos[rowIndex]
        pushControllerWithName("Masa", context: pizza)
    }

}

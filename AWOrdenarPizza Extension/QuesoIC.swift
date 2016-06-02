//
//  QuesoIC.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 01/06/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import WatchKit
import Foundation


class QuesoIC: WKInterfaceController {

    @IBOutlet var tblQueso: WKInterfaceTable!
    var quesos: Array<String> = ["Mozzarella","Cheddar","Parmesano","Sin queso"]
    var pizza: Pizza = Pizza()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        tblQueso.setNumberOfRows(quesos.count, withRowType: "rowQueso")
        for index in 0 ..< quesos.count {
            if let controller = tblQueso.rowControllerAtIndex(index) as? QuesoRC {
                controller.lblQueso.setText(quesos[index])
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        pizza.queso = quesos[rowIndex]
        pushControllerWithName("Ingredientes", context: pizza)
    }

}

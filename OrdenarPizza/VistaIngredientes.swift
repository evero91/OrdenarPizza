//
//  VistaIngredientes.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 09/05/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {

    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPepperoni: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBOutlet weak var swAceituna: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swPimiento: UISwitch!
    @IBOutlet weak var swPiña: UISwitch!
    @IBOutlet weak var swAnchoa: UISwitch!
    
    var tamano: String = ""
    var masa: String = ""
    var queso: String = ""
    var ingredientes: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        ingredientes = ""
        if swJamon.on {
            ingredientes += "Jamón, "
        }
        if swPepperoni.on {
            ingredientes += "Pepperoni, "
        }
        if swPavo.on {
            ingredientes += "Pavo, "
        }
        if swSalchicha.on {
            ingredientes += "Salchicha, "
        }
        if swAceituna.on {
            ingredientes += "Aceituna, "
        }
        if swCebolla.on {
            ingredientes += "Cebolla, "
        }
        if swPimiento.on {
            ingredientes += "Pimiento, "
        }
        if swPiña.on {
            ingredientes += "Piña, "
        }
        if swAnchoa.on {
            ingredientes += "Anchoa, "
        }
        
        let vResumen = segue.destinationViewController as! VistaResumen
        vResumen.tamano = tamano
        vResumen.masa = masa
        vResumen.queso = queso
        if ingredientes != "" {
            vResumen.ingredientes = ingredientes.substringToIndex(ingredientes.startIndex.advancedBy(ingredientes.characters.count - 2))
        } else {
            vResumen.ingredientes = "Sin ingredientes"
        }
        
    }

}

//
//  VistaResumen.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 09/05/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import UIKit

class VistaResumen: UIViewController {

    @IBOutlet weak var lblTamano: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    @IBOutlet weak var txtIngredientes: UITextView!
    @IBOutlet weak var imgPizza: UIImageView!
    
    var tamano: String = ""
    var masa: String = ""
    var queso: String = ""
    var ingredientes: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTamano.text = tamano
        lblMasa.text = masa
        lblQueso.text = queso
        txtIngredientes.text = ingredientes
        imgPizza.image = UIImage(named: "pizza\(arc4random_uniform(4) + 1)")!
    }
    
    @IBAction func ordenarPizza() {
        var titulo: String = ""
        var mensaje: String = ""
        
        if ingredientes != "Sin ingredientes" {
            titulo = "Orden exitosa"
            mensaje = "La pizza ha sido enviada a la cocina"
        } else {
            titulo = "Orden incompleta"
            mensaje = "Asegurate de seleccionar ingredientes para la pizza"
        }
        
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

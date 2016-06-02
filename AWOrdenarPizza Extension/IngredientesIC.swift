//
//  IngredientesIC.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 01/06/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesIC: WKInterfaceController {

    var pizza: Pizza = Pizza()
    var totalIngredientes = 0;
    var ingredientes: Array<String> = Array<String>()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
    }
    
    @IBAction func seleccionoJamon(value: Bool) {
        cambioValor(value, ingrediente: "Jamón")
    }
    
    @IBAction func seleccionoPepperoni(value: Bool) {
        cambioValor(value, ingrediente: "Pepperoni")
    }
    
    @IBAction func seleccionoPavo(value: Bool) {
        cambioValor(value, ingrediente: "Pavo")
    }
    
    @IBAction func seleccionoSalchicha(value: Bool) {
        cambioValor(value, ingrediente: "Salchicha")
    }
    
    @IBAction func seleccionoAceituna(value: Bool) {
        cambioValor(value, ingrediente: "Aceituna")
    }
    
    @IBAction func seleccionoCebolla(value: Bool) {
        cambioValor(value, ingrediente: "Cebolla")
    }
    
    @IBAction func seleccionoPimiento(value: Bool) {
        cambioValor(value, ingrediente: "Pimiento")
    }
    
    @IBAction func seleccionoPina(value: Bool) {
        cambioValor(value, ingrediente: "Piña")
    }
    
    @IBAction func seleccionoAnchoa(value: Bool) {
        cambioValor(value, ingrediente: "Anchoa")
    }
    
    func removerIngrediente(ingrediente: String) {
        for i in 0 ..< ingredientes.count {
            if ingredientes[i] == ingrediente {
                ingredientes.removeAtIndex(i)
                break
            }
        }
    }
    
    func cambioValor(activo: Bool, ingrediente: String) {
        if activo {
            ingredientes.append(ingrediente)
            totalIngredientes += 1
        } else {
            removerIngrediente(ingrediente)
            totalIngredientes -= 1
        }
    }
    
    func mostrarAlertaConTitulo(titulo: String, mensaje: String) {
        let action = WKAlertAction(title: "OK", style: .Destructive) {}
        presentAlertControllerWithTitle(titulo, message: mensaje, preferredStyle: .ActionSheet, actions: [action])
    }
    
    @IBAction func confirmar() {
        if totalIngredientes > 0 {
            if totalIngredientes <= 5 {
                var ingredientesSeleccionados = ""
                for i in 0 ..< ingredientes.count {
                    ingredientesSeleccionados += "\(ingredientes[i]), "
                }
                ingredientesSeleccionados = ingredientesSeleccionados.substringToIndex(ingredientesSeleccionados.startIndex.advancedBy(ingredientesSeleccionados.characters.count - 2))
                pizza.ingredientes = ingredientesSeleccionados
                pushControllerWithName("Resumen", context: pizza)
            } else {
                mostrarAlertaConTitulo("Advertencia", mensaje: "Seleccione como máximo cinco ingredientes")
            }
        } else {
            mostrarAlertaConTitulo("Advertencia", mensaje: "Seleccione al menos un ingrediente")
        }
    }

}

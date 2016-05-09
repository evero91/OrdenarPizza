//
//  VistaQueso.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 09/05/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgQueso: UIImageView!
    @IBOutlet weak var pickerQueso: UIPickerView!
    
    var tamano: String = ""
    var masa: String = ""
    var quesos: Array<Array<String>> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        quesos.append(["Mozzarella","quesoMozzarella"])
        quesos.append(["Cheddar","quesoCheddar"])
        quesos.append(["Parmesano","quesoParmesano"])
        quesos.append(["Sin queso","sinQueso"])
        imgQueso.image = UIImage(named: "quesoMozzarella")
    }

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vIngredientes = segue.destinationViewController as! VistaIngredientes
        vIngredientes.tamano = tamano
        vIngredientes.masa = masa
        vIngredientes.queso = quesos[pickerQueso.selectedRowInComponent(0)][0]
    }
    
    // MARK: UIPickerViewDataSource
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    // MARK: UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row][0]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgQueso.image = UIImage(named: quesos[row][1])
    }

}

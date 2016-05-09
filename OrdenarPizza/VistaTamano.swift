//
//  VistaTamaño.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 09/05/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import UIKit

class VistaTamano: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgTamano: UIImageView!
    @IBOutlet weak var pickerTamano: UIPickerView!
    
    private var tamanos: Array<Array<String>> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamanos.append(["Chica","pizzaChica"])
        tamanos.append(["Mediana","pizzaMediana"])
        tamanos.append(["Grande","pizzaGrande"])
        imgTamano.image = UIImage(named: "pizzaChica")
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vMasa = segue.destinationViewController as! VistaMasa
        vMasa.tamano = tamanos[pickerTamano.selectedRowInComponent(0)][0]
    }
    
    // MARK: UIPickerViewDataSource
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanos.count
    }
    
    // MARK: UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanos[row][0]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgTamano.image = UIImage(named: tamanos[row][1])
    }

}

//
//  VistaMasa.swift
//  OrdenarPizza
//
//  Created by Everardo Guevara Soto on 09/05/16.
//  Copyright © 2016 Everardo Guevara Soto. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgMasa: UIImageView!
    @IBOutlet weak var pickerMasa: UIPickerView!
    
    var tamano:String = ""
    var masas: Array<Array<String>> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        masas.append(["Delgada","masaDelgada"])
        masas.append(["Crujiente","masaCrujiente"])
        masas.append(["Gruesa","masaGruesa"])
        imgMasa.image = UIImage(named: "masaDelgada")
    }

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vQueso = segue.destinationViewController as! VistaQueso
        vQueso.tamano = tamano
        vQueso.masa = masas[pickerMasa.selectedRowInComponent(0)][0]
    }
    
    // MARK: UIPickerViewDataSource
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    
    // MARK: UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row][0]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgMasa.image = UIImage(named: masas[row][1])
    }

}

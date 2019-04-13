//
//  ConverterViewController.swift
//  CalculatorConversion
//
//  Created by Mitchell John Hoffmann on 4/12/19.
//  Copyright © 2019 Mitchell John Hoffmann. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

 
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var convert = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                   Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                   Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                   Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        

        // Do any additional setup after loading the view.
    }



    @IBAction func converterButton(_ sender: Any) {
        
        let menu = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        
        let cToF = UIAlertAction(title: convert[0].label, style: .default)
        let fToC = UIAlertAction(title: convert[1].label, style: .default)
        let mToKm = UIAlertAction(title: convert[2].label, style: .default)
        let kmToM = UIAlertAction(title: convert[3].label, style: .default)
        
        menu.addAction(cToF)
        menu.addAction(fToC)
        menu.addAction(mToKm)
        menu.addAction(kmToM)
        
        self.present(menu, animated: true, completion: nil)
    }
    
    
    
    
    
}

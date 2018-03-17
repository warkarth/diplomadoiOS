//
//  ViewController.swift
//  elements
//
//  Created by Ricardo Escobedo Solares on 09/03/18.
//  Copyright © 2018 resco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cajaTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchActivated(sender: UISwitch){
        if sender.isOn{
            print("Switch on")
        }else{
            print("Switch off")
        }
    }
    @IBAction func slideAction(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKey(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func unwindToFirst(unwindSegue: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        segue.destination.navigationItem.title = cajaTextField.text
    }
    
    
}


//
//  ViewController.swift
//  elements2
//
//  Created by Ricardo Escobedo Solares on 09/03/18.
//  Copyright © 2018 resco. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var segueSwitch: UISwitch!
    @IBOutlet weak var txtTexField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtTexField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takeMetoB(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "blue", sender: nil)
        }
    }
    
    @IBAction func takeMetoG(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    
    @IBAction func hideKeyboard(_ sender: UIButton) {
        txtTexField.resignFirstResponder()
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(txtTexField.text)
        txtTexField.resignFirstResponder()
        
        return true
    }
    
    
}


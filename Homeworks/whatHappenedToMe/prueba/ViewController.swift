//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outletText: UITextField!
    @IBOutlet weak var aoutletButton: UIButton! //Se agrego @IBOutlet
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aoutletButton.setTitle("Touch me!", for: .normal)
        
    }
    
    @IBAction func actionButton(_ sender: UIButton) { //Se agrego @IBAction
         outletText.text = "You are a genius " //Se modifico el nombre de la variable
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


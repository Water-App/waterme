//
//  ViewController.swift
//  WaterMe
//
//  Created by Jason Zavala on 5/12/20.
//  Copyright © 2020 Ultron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var intakeLabel: UITextField!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func enterWasPressed(_ sender: Any) {
        self.intakeLabel.text = "WORKING!"
        
    }
    
}

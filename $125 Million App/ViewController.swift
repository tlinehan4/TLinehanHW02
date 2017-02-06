//
//  ViewController.swift
//  $125 Million App
//
//  Created by Timothy Linehan on 2/1/17.
//  Copyright © 2017 Timothy Linehan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        
        if let miles = Double(userInput.text!) {
            let km = miles * 1.6
            resultsLabel.text = "\(miles) miles = \(km) kilometers"
        } else {
            resultsLabel.text = ""
            
            let alertController = UIAlertController(title: "Entry Error", message: "Please enter a valid number. Not an empty string, no commas, symbols, or non-numeric characters", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
        
        
    }


}


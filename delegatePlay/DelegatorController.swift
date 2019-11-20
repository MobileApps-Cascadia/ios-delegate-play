//
//  childViewController.swift
//  delegatePlay
//
//  Created by Brian Bansenauer on 5/18/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import Foundation
import UIKit

//Create the protocol (also know as an interface) that the delegate will use
protocol UseData {
    func writeToLable(info:String)
}

class DelegatorController:UIViewController {

    @IBOutlet weak var txtData: UITextField!
    //Add Delegate variable
    var myDelagate:UseData?
    
    @IBAction func goButtonPressed() {
        //Call the Delegate's method to write the text into its label
        myDelagate?.writeToLable(info: txtData.text ?? "working");
        // Return to the previous view
        self.navigationController?.popViewController(animated: true)
    }
}


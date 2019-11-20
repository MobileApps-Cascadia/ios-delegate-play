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
    func writeToLbel(info:String)
    }

class DelegatorController:UIViewController {

    @IBOutlet weak var txtData: UITextField!
    //Add Delegate variable
    var myDelegate:UseData?
    
    @IBAction func goButtonPressed() {
        //Call the Delegate's method to write the text into its label
        myDelegate?.writeToLbel(info: txtData.text!);
            //use text entry instead of “hello”
        // Return to the previous view
        self.navigationController?.popViewController(animated: true)
    }
    
}


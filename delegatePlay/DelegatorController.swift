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


class DelegatorController:UIViewController {
    
    var myDelegate:UseData?

    @IBOutlet weak var txtData: UITextField!
    //Add Delegate variable
    
    @IBAction func goButtonPressed() {

        //Call the Delegate's method to write the text into its label
        myDelegate?.writeDatatoLabel(info: txtData.text!)
        
        // Return to the previous view
        self.navigationController?.popViewController(animated: true)
    }
}

protocol UseData {
    func writeDatatoLabel(info: String)
}


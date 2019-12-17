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
    func writeToLabel(info:String)
}


class  DelegatorController:UIViewController, UseData {
    func writeToLabel(info: String) {
        <#code#>
    }
    

    var myDelegate:UITextFieldDelegate?
    
    @IBOutlet weak var txtData: UITextField!
    //Add Delegate variable
    
    
    @IBAction func goButtonPressed() {
        //Call the Delegate's method to write the text into its label
        myDelegate.writeToLabel(info: "hello");
        
        
        
        // Return to the previous view
        self.navigationController?.popViewController(animated: true)
        
        
        
        
    }
}


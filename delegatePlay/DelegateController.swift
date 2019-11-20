//
//  DelegateController.swift (GREEN)
//  delegatePlay
//
//  Created by Brian Bansenauer
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController, UseData{
    func writeToLabel(info: String) {
        descriptionLabel.text = info
    }
    
    

    @IBOutlet weak var descriptionLabel: UILabel! //this is the view label thing
    
    // Implement the protocol
    func writeDatatoLabel(info: String) {
        //write the info into the label
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Assign this controller as the Delegate for the destination
        let delegator = segue.destination as!DelegatorController
        
        delegator.myDelegate = self
    }

}


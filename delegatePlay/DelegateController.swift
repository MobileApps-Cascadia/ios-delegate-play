//
//  DelegateController.swift (GREEN)
//  delegatePlay
//
//  Created by Brian Bansenauer
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController, UseData {
    func writeToLabel(info: String) {
        <#code#>
    }
    

    @IBOutlet weak var descriptionLabel: UILabel!
    
    // Implement the protocol
    func writeDatatoLabel(info: String) {
        //write the info into the label
        UITextFieldDelegate.text = info;
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Assign this controller as the Delegate for the destination

        let delegator = segue.destination as! DelegateController
        
        delegator.myDelegate = self
        
        
    }

}


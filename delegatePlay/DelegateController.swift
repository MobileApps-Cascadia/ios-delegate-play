//
//  DelegateController.swift (GREEN)
//  delegatePlay
//
//  Created by Brian Bansenauer
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController, UseData {

    @IBOutlet weak var lblDelegate: UILabel!
    
    // Implement the protocol
    func writeDataToLabel(info: String) {
        //write the info into the label
        lblDelegate.text = info
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Assign this controller as the Delegate for the destination
        let del = segue.destination
        as! DelegatorController
        
        del.delegator = self
    }

}


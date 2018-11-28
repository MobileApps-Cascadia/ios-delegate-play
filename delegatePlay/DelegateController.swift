//
//  DelegateController.swift (GREEN)
//  delegatePlay
//
//  Created by Brian Bansenauer
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController, UseData{
    

    @IBOutlet weak var lblDelegate: UILabel!
    
    // Implement the protocol
    func writeToLabel(info: String) {
        lblDelegate.text = info;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Assign this controller as the Delegate for the destination
        let delegator = segue.destination as! DelegatorController
        delegator.myDelegate = self
    }

}


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
    
    // Implement the protoco
    func writeToLabel(info: String){
        lblDelegate.text = info
    }
    
    
        //Assign this controller as the Delegate for the destination
        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            
            let delegator = segue.destination
            as! DelegatorController
            
            delegator.myDelegate = self
        }

    }




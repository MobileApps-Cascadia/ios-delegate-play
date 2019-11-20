//
//  DelegateController.swift (GREEN)
//  delegatePlay
//
//  Created by Brian Bansenauer
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController, UseData {
    func writeToLbel(info: String) {
        descriptionLabel.text = info
    }
    

    @IBOutlet weak var descriptionLabel: UILabel!
    
    // Implement the protocol
    func writeDatatoLabel(info: String) {
        //write the info into the label
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let delegator = segue.destination as!
        DelegatorController
        delegator.myDelegate = self

    }

}


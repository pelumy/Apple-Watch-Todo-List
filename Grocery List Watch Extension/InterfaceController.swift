//
//  InterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by mac on 23/11/2020.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet var myButton: WKInterfaceButton!

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBAction func buttonTapped() {
        myButton.setTitle("Tapped")
    }

}

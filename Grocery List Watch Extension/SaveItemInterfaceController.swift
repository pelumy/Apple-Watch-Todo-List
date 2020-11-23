//
//  SaveItemInterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by mac on 23/11/2020.
//

import UIKit
import WatchKit

class SaveItemInterfaceController: WKInterfaceController {
    @IBOutlet var saveButton: WKInterfaceButton!
    @IBOutlet var itemLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
        func setupInput() {
            self.presentTextInputController(withSuggestions: nil, allowedInputMode: .allowEmoji) { (results) in
                guard let results = results else {return}
                DispatchQueue.main.async {
                    self.dismissTextInputController()
                    self.itemLabel.setText(results[0] as? String)
                }
            }
        }
    
    @IBAction func saveButtonTapped() {
        self.pushController(withName: "listItems", context: itemLabel)
    }

}

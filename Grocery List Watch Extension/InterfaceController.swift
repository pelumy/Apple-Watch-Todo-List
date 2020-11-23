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
    @IBOutlet var textLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
//        setupTableView()
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
    @IBAction func buttonTapped() {
        self.presentTextInputController(withSuggestions: nil, allowedInputMode: .allowEmoji) { (results) in
            guard let results = results else {return}
            DispatchQueue.main.async {
                self.dismissTextInputController()
                self.textLabel.setText(results[0] as? String)
            }
        }
    }
    
//    func setupTableView() {
//        let fruits = ["Apples", "Oranges", "Cherries", "Mangos", "Berries"]
//        myTable.setNumberOfRows(fruits.count, withRowType: "cell")
//        var x = 0
//        for fruit in fruits {
//            let row = myTable.rowController(at: x) as? RowController
//            row?.myLabel.setText(fruit)
//            x += 1
//        }
//    }
    
    
}

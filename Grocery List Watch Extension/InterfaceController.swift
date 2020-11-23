//
//  InterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by mac on 23/11/2020.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet var myTable: WKInterfaceTable!

    override func awake(withContext context: Any?) {
        let fruits = ["Apples", "Oranges", "Cherries", "Mangos", "Berries"]
        myTable.setNumberOfRows(fruits.count, withRowType: "cell")
        var x = 0
        for fruit in fruits {
            let row = myTable.rowController(at: x) as? RowController
            row?.myLabel.setText(fruit)
            x += 1
        }
        
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
    
    }
    


}

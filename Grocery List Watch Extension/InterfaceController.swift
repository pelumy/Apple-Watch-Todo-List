//
//  InterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by mac on 23/11/2020.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet var button1: WKInterfaceButton!
    @IBOutlet var button2: WKInterfaceButton!
    @IBOutlet var button3: WKInterfaceButton!
    
    
    override func awake(withContext context: Any?) {
        //        setupTableView()
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
    @IBAction func button1Tapped() {
        self.pushController(withName: "first", context: nil)
    }
    
    @IBAction func button2Tapped() {
        self.pushController(withName: "second", context: nil)
    }
    
    @IBAction func button3Tapped() {
        self.pushController(withName: "third", context: nil)
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


//    func setupInput() {
//        self.presentTextInputController(withSuggestions: nil, allowedInputMode: .allowEmoji) { (results) in
//            guard let results = results else {return}
//            DispatchQueue.main.async {
//                self.dismissTextInputController()
//                self.textLabel.setText(results[0] as? String)
//            }
//        }
//    }
}



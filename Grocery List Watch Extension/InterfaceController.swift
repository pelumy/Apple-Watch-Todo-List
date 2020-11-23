//
//  InterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by mac on 23/11/2020.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet var addButton: WKInterfaceButton!
    @IBOutlet var table: WKInterfaceTable!
    var items: [String] = []
    let userDefaults = UserDefaults.standard

    override func awake(withContext context: Any?) {
        self.items = self.userDefaults.stringArray(forKey: "items") ?? [String]()
        setupTableView()
    }
    
    override func willActivate() {
        
    }
    
    override func didDeactivate() {
        
    }
    
    @IBAction func addButtonTapped() {
        self.presentTextInputController(withSuggestions: nil, allowedInputMode: .allowEmoji) { (results) in
            guard let results = results else {return}
            DispatchQueue.main.async {
                self.dismissTextInputController()
            }
            self.items.insert(results[0] as? String ?? "", at: 0)
            self.userDefaults.set(self.items, forKey: "items")
            self.setupTableView()
            print(self.items)
        }
    }
    
    func setupTableView() {
        table.setNumberOfRows(items.count, withRowType: "cell")
        var x = 0
        for _ in items {
            let row = table.rowController(at: x) as? RowController
            row?.itemLabel.setText(items[x])
            
            x += 1
        }
    }
}



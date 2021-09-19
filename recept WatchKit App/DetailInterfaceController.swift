//
//  DetailInterfaceController.swift
//  recept WatchKit Extension
//
//  Created by user on 18.09.2021.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {
    @IBOutlet weak var name: WKInterfaceLabel!
    @IBOutlet weak var icon: WKInterfaceImage!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let item = context as? recipes {
            icon.setImageNamed(item.icon)
            name.setText(item.name)
        }
    }



}

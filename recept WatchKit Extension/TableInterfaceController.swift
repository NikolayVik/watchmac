//
//  InterfaceController.swift
//  recept WatchKit Extension
//
//  Created by user on 18.09.2021.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {
    //  Объявляем аутлет для обращения к таблице
    @IBOutlet weak var table: WKInterfaceTable!
    
    // выполняется при загрузке экрана
    override func awake(withContext context: Any?) {
        // кол-во строк
        table.setNumberOfRows(recipes.getRecipe().count, withRowType: "row")
        // Configure interface objects here.
        //цикл для построения строк
        for (index, item) in recipes.getRecipe().enumerated() {
            let controller = table.rowController(at: index) as! TableRow
            controller.recipeIcon.setImageNamed(item.icon)
            controller.recipeName.setText(item.name)
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        return recipes.getRecipe()[rowIndex]
    }
    override func willActivate() {
        //visible to user
    }
    override func didDeactivate() {
        //
    }

}

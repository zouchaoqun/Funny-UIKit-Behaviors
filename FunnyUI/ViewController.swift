//
//  ViewController.swift
//  FunnyUI
//
//  Created by Max on 14/11/16.
//  Copyright © 2016 Schneider Electric (Australia) Pty Ltd. All rights reserved.
//

import UIKit
import TableKit

class ViewController: UITableViewController {

    var tableDirector: TableDirector!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableDirector = TableDirector(tableView: tableView)
        
        let barButtonRow = TableRow<StringTableViewCell>(item: "UIBarButtonItem").on(TableRowActionType.click) { _ in
            
            self.performSegue(withIdentifier: "SegueBarButtonItem", sender: self)
        }

        let section = TableSection(rows: [barButtonRow])
        tableDirector += section
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

class StringTableViewCell: UITableViewCell, ConfigurableCell {
    
    func configure(with string: String) {
        
        accessoryType = .disclosureIndicator
        textLabel?.text = string
    }
}

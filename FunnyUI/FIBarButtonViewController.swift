//
//  FIBarButtonViewController.swift
//  FunnyUI
//
//  Created by Max on 14/11/16.
//  Copyright © 2016 Schneider Electric (Australia) Pty Ltd. All rights reserved.
//

import UIKit

class FIBarButtonViewController: UIViewController {

    @IBOutlet weak var snowBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var organizeBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBarButtonsTitle(to: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func titleSelectionChanged(_ sender: Any) {
        let segmentedControl = sender as! UISegmentedControl
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            changeBarButtonsTitle(to: nil)
        case 1:
            changeBarButtonsTitle(to: "")
        case 2:
            changeBarButtonsTitle(to: "a")
        default:
            assertionFailure("Unexpected segmented control index")
        }
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Helpers
    func changeBarButtonsTitle(to title: String?) {
        
        if let buttons = navigationItem.leftBarButtonItems {
            changeTitleForButtons(buttons: buttons, to: title)
        }
        
        if let buttons = navigationItem.rightBarButtonItems {
            changeTitleForButtons(buttons: buttons, to: title)
        }
    }
    
    func changeTitleForButtons(buttons: [UIBarButtonItem], to title: String?) {
        for button in buttons {
            button.title = title
        }
    }
}


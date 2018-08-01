//
//  ViewController.swift
//  FlatActionSheet
//
//  Created by christianampe on 07/31/2018.
//  Copyright (c) 2018 christianampe. All rights reserved.
//

import UIKit
import FlatActionSheet

class ViewController: UIViewController {
    @IBOutlet weak var actionSheet: FlatActionSheet!
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionSheet.tableView.separatorStyle = .none
        
        let redAction = FlatActionSheetAction(title: "Change Border To Red", style: .normal, handler: { (action) in
            self.actionSheet.layer.borderColor = UIColor.red.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        let blueAction = FlatActionSheetAction(title: "Change Border To Blue", style: .normal, handler: { action in
            self.actionSheet.layer.borderColor = UIColor.blue.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        let greenAction = FlatActionSheetAction(title: "Change Border To Green", style: .normal, handler: { action in
            self.actionSheet.layer.borderColor = UIColor.green.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        let yellowAction = FlatActionSheetAction(title: "Change Border To Yellows", style: .normal, handler: { (action) in
            self.actionSheet.layer.borderColor = UIColor.yellow.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        actionSheet.addAction(redAction)
        actionSheet.addAction(blueAction)
        actionSheet.addAction(greenAction)
        actionSheet.addAction(yellowAction)
    }
}

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
    let actionSheet = FlatActionSheet(config: .default)
    
    @IBAction func showActionSheet(_ sender: Any) {
        actionSheet.show()
    }
}

extension ViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let redAction = FlatActionSheetAction(title: "Change Border To Red", style: .dismiss, handler: { (action) in
            self.actionSheet.layer.borderColor = UIColor.red.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        let blueAction = FlatActionSheetAction(title: "Change Border To Blue", style: .dismiss, handler: { action in
            self.actionSheet.layer.borderColor = UIColor.blue.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        let greenAction = FlatActionSheetAction(title: "Change Border To Green", style: .dismiss, handler: { action in
            self.actionSheet.layer.borderColor = UIColor.green.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        let yellowAction = FlatActionSheetAction(title: "Change Border To Yellows", style: .dismiss, handler: { (action) in
            self.actionSheet.layer.borderColor = UIColor.yellow.cgColor
            self.actionSheet.layer.borderWidth = 1.0
        })
        
        actionSheet.addAction(redAction)
        actionSheet.addAction(blueAction)
        actionSheet.addAction(greenAction)
        actionSheet.addAction(yellowAction)
    }
}

extension ViewController {
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

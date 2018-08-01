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
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.checkAction)))
        
        actionSheet.removeFromSuperview()
    }
}

extension ViewController {
    @objc func checkAction(sender : UITapGestureRecognizer) {
        
    }
}


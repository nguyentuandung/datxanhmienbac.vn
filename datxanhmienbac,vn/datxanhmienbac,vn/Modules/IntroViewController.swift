//
//  IntroViewController.swift
//  datxanhmienbac,vn
//
//  Created by Macbook on 25/03/2016.
//  Copyright © 2016 DXMB. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet var LeftSideBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            LeftSideBar.target = self.revealViewController()
            LeftSideBar.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}

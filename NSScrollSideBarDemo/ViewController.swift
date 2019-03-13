//
//  ViewController.swift
//  NSScrollSideBarDemo
//
//  Created by 徐恒一 on 2019/3/13.
//  Copyright © 2019 徐恒一. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var sideBar: NSScrollSideBar!
    @IBOutlet weak var openButton: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func openSideBar(_ sender: Any?) {
        sideBar.clickOpenButton()
    }

}


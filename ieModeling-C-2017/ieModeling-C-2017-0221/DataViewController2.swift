//
//  DataViewController.swift
//  UIPageViewControllerSample
//
//  Copyright © 2015年 CrossBridge. All rights reserved.
//

import UIKit

class DataViewController2: UIViewController {
    
    //@IBOutlet weak var label1: UILabel!
    
    //@IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    var labelStr:String?
    var labelStr2:String?
    var labelStr3:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = labelStr
        label2.text = labelStr2
        label3.text = labelStr3
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}


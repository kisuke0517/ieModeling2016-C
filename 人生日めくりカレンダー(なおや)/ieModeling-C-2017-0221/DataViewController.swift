//
//  DataViewController.swift
//  UIPageViewControllerSample
//
//  Copyright © 2015年 CrossBridge. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    //@IBOutlet weak var label1: UILabel!
    
    //@IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    var labelStr:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = labelStr
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}

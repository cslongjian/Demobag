//
//  CalculatorViewController.swift
//  Swift_demo
//
//  Created by Supwin_mbp002 on 15/10/29.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var cleanBtn: UIButton!
    @IBOutlet weak var positiveOrNegativeBtn: UIButton!
    @IBOutlet weak var RemainderBtn: UIButton!
    @IBOutlet weak var DivisionBtn: UIButton!
    @IBOutlet weak var MultiplicationBtn: UIButton!
    @IBOutlet weak var MinusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var equalBtn: UIButton!
    
    @IBOutlet weak var nineBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var pointBtn: UIButton!
    
    @IBOutlet weak var appLable: UILabel!
    
    var firstValue = 0.0
    var secondValue =  0.0
    
    var operatorValue:String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        oneBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        secondBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        thirdBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        fourBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        fiveBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        sixBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        sevenBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        eightBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        nineBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside);
        
    }

    func addNums(btn:UIButton)
    {
        
        print(btn.tag);
    }

}

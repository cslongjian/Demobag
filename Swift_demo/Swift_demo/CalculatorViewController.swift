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
    
    var firstValueStr:String! = "0"
    var secondValueStr:String! = "0"
    var temp:String! = "0"
    
    var operatorValue:String!
    
    var setSecondValue:Bool! = true
    
//    连续两次操作符
    var twiceOp:Int! = 0
    var rightOff:Bool! = false
//    记录操作符
    var options:Int! = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstValueStr = "0"
        secondValueStr = "0"
        zeroBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        oneBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        secondBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        thirdBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        fourBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        fiveBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        sixBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        sevenBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        eightBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        nineBtn.addTarget(self, action:Selector("addNums:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        positiveOrNegativeBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        RemainderBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        DivisionBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        MultiplicationBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        MinusBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        plusBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        positiveOrNegativeBtn.addTarget(self, action: Selector("operators:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        equalBtn.addTarget(self, action: Selector("equalValue"), forControlEvents: UIControlEvents.TouchUpInside)
        pointBtn.addTarget(self, action: Selector("addPoint"), forControlEvents: UIControlEvents.TouchUpInside)
        cleanBtn.addTarget(self, action: Selector("cleanAll"), forControlEvents: UIControlEvents.TouchUpInside)
        
        let test = 10.2
        let test2 = 1
        let v = test % (Double)(test2)
        print(v)
        
        let test3 = 10.0
        let test4 = 1
        let vs = test3 % (Double)(test4)
        print(vs)
        
        
        
        
    }
    
    //点击操作按钮时候记录当前操作数为第二值。。再次点击数目就赋值第二个操作数。不然就以第一个操作数为第二操作数进行计算。
    func operators(btn:UIButton)
    {
        
        twiceOp = twiceOp + 1
        setSecondValue = false
        temp = firstValueStr
        if ((rightOff == true) && (twiceOp == 1)){
            let value = (Float)(temp!)
            let value2 = (Float)(secondValueStr!)
            var answerValue:Float! = 0
            var answerchangeValue:Int! = 0
            switch options
            {
            case 1:
                answerValue = value! + value2!
                 if answerValue%1.0 == 0{
                    answerchangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerchangeValue)
                    appLable.text = (String)(answerchangeValue)
                }else
                 {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }
              
            case 2:
                answerValue = value! - value2!
                if answerValue%1.0 == 0{
                    answerchangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerchangeValue)
                    appLable.text = (String)(answerchangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }
            case 3:
                answerValue = value! * value2!
                if answerValue%1.0 == 0{
                    answerchangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerchangeValue)
                    appLable.text = (String)(answerchangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }
            case 4:
                answerValue = value! / value2!
                if answerValue%1.0 == 0{
                    answerchangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerchangeValue)
                    appLable.text = (String)(answerchangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }
            default:
                print("2默认选择")
                 appLable.text = firstValueStr
            }
            secondValueStr = "0"
        }
        
//        记录当前点击操作符号
        let optionsValue = btn.tag
        switch optionsValue
        {
        case 1:
            print("加法")
            options = 1
        case 2:
            print("减法")
            options = 2
        case 3:
            print("乘法")
            options = 3
        case 4:
            print("除法")
            options = 4
        case 5:
            print("百分比")
            
        case 6:
            print("正负取反")
        default:
            print("默认选择")
        }
        rightOff = true
    }

    func addNums(btn:UIButton)
    {
        twiceOp = 0
        print(btn.tag);
        var addvalue:String!
        addvalue = (String)(btn.tag);
        
        if setSecondValue != false{
            if firstValueStr == "0"
            {
                firstValueStr = ""
            }
            firstValueStr = firstValueStr + addvalue
             appLable.text = firstValueStr
        }else{
            if secondValueStr == "0"
            {
                secondValueStr = ""
            }
            secondValueStr = secondValueStr + addvalue
             appLable.text = secondValueStr
        }
    }
    
    func cleanAll()
    {
        print("清0")
        firstValueStr = ""
        secondValueStr = ""
        setSecondValue = true
        appLable.text = "0"
        rightOff = false
        twiceOp = 0
    }
    
    func equalValue()
    {
            let value = (Float)(temp!)
            let value2 = (Float)(secondValueStr!)
            var answerValue:Float! = 0
            var answerChangeValue:Int! = 0
            switch options
            {
            case 1:
                print("加法")
                answerValue = value! + value2!
                options = 0
                temp = (String)(answerValue)
                if answerValue%1.0 == 0{
                    answerChangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerChangeValue)
                    appLable.text = (String)(answerChangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }
            case 2:
                print("减法")
                answerValue = value! - value2!
                options = 0
                temp = (String)(answerValue)
                if answerValue%1.0 == 0{
                    answerChangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerChangeValue)
                    appLable.text = (String)(answerChangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }            case 3:
                print("乘法")
                answerValue = value! * value2!
                options = 0
                temp = (String)(answerValue)
                if answerValue%1.0 == 0{
                    answerChangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerChangeValue)
                    appLable.text = (String)(answerChangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }            case 4:
                print("除法")
                answerValue = value! / value2!
                options = 0
                temp = (String)(answerValue)
                if answerValue%1.0 == 0{
                    answerChangeValue = (Int)(answerValue)
                    firstValueStr = (String)(answerChangeValue)
                    appLable.text = (String)(answerChangeValue)
                }else
                {
                    firstValueStr = (String)(answerValue)
                    appLable.text = (String)(answerValue)
                }            default:
                print("默认选择")
            }
    }
    
    func addPoint()
    {
        print("小数点")
        var isAddPoint:Bool! = false
        if setSecondValue != false{
          for str in firstValueStr.characters {
            print(str)
            if str == "."{
                isAddPoint = false
                break
            }else{
                isAddPoint = true
            }
        }
            if isAddPoint == true{
                  firstValueStr = firstValueStr+"."
            }
            appLable.text = firstValueStr
        }else{
            for character in secondValueStr.characters {
                if character == "."{
                    isAddPoint = false
                    break
                }else{
                    isAddPoint = true
                }
            }
            if isAddPoint == true{
                secondValueStr = secondValueStr + "."
            }
            appLable.text = secondValueStr
        }
    }
}

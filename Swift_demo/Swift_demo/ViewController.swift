//
//  ViewController.swift
//  Swift_demo
//
//  Created by Supwin_mbp002 on 15/10/28.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //学习基础的语法知识。
//        常量
        let myConstant = 42
//        变量
        var myVariable = myConstant
        myVariable = 1
        print(myVariable);
        
        let width = 2
        let label = "标签宽度"
        let widthLabel = label + String(width)
        print(widthLabel)
        
        //值转换成为字符串
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        print(appleSummary)
        print(fruitSummary)
        let floatvalue = 2.26
        let name = "yaoming is "
        let msg = name + String(floatvalue)
        print(msg)
        
        //可选值。用法注意。
        print("------测试 ？-----")
        var optionnalString:String? = "choice value!"
//        optionnalString = "value1"
        print(optionnalString)
        print(optionnalString!)
        var optionnalString2:String? //只有问号的时候默认值是nil 直接取！值。会报错
//      print(optionnalString2!)报错
        print(optionnalString2)
        
        print("-------测试 ！-------")
        let strl:String!
//        print(strl) 没有赋值。不能使用
//        print(strl!)
        strl = "ddd"
        print(strl)
        print(strl!)
        let strs:String! = "gjsl"
        print(strs)
        print(strs!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


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
        
        //方法的使用。
        let hello = sayHello("swift")
        print(hello)
        //元组的操作方法。
        let tuple = retrunTuple()
        print(tuple.name + ":" + (String)(tuple.value))
        //默认参数
        defaultArg()
        defaultArg(1)
//        可变参数
        print((String)(arithmeticMean(array: 1, 2, 3, 4, 5)))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    方法：func 方法名（ ）-> 返回类型
    func sayHello(personName: String) -> String{
        let greeting = "hello," + personName + "!"
        return greeting
    }
//    方法返回元组，操作元组
    func retrunTuple() -> (name: String, value: Int){
        return ("name",1)
    }
//    默认参数情况
    func defaultArg(paramenter: Int = 12)
    {
        print(paramenter)
    }
//    可变参数
//    传入可变参数的值在函数体内当做这个类型的一个数组。例如,一个叫做 numbers 的 Double... 型可变参 数,在函数体内可以当做一个叫 numbers 的 Double[] 型的数组常量
    func arithmeticMean(array numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
        total += number }
        return total / Double(numbers.count)
    }


}


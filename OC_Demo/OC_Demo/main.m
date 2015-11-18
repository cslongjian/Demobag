//
//  main.m
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/10/24.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atom.h"
#import "Hydrogen.h"
#import "Atom+Nuclear.h"
#import "Atom+Helper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // first
        NSLog(@"Hello, World!");
        NSDate *dateTime = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:@"eee MMM dd, yyy"];
        NSString *dateString = [dateFormat stringFromDate:dateTime];
        NSLog(@"Today's date is %@",dateString);
        
        NSLog(@"--------------华丽的分割线--------------");
        //second
        Atom *atom = [[Atom alloc]init];
        NSLog(@"atom chemical element name:%@", atom.chemicalElement);
        
///       /转发功能。 无法使用6.4去跑swift代码。测试提交
        Hydrogen *atoam = [Hydrogen hydrogenWithNeutrons:2];
        NSString *fact = [atoam factoid];
        
        NSLog(@"%@",fact);
        
        LOG();
    }
    return 0;
}

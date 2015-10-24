//
//  main.m
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/10/24.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atom.h"

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
        
    }
    return 0;
}

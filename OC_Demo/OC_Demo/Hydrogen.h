//
//  Hydrogen.h
//  OC_Demo
//
//  Created by 陈龙坚 on 15/10/27.
//  Copyright (c) 2015年 chenlongjian. All rights reserved.
//

#import "Atom.h"

@interface Hydrogen : Atom


- (instancetype) initWithNeutrons:(NSUInteger)neutrons;
+ (instancetype) hydrogenWithNeutrons:(NSUInteger)neutrons;

@end

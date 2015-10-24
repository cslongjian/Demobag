//
//  Atom.h
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/10/24.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atom : NSObject

@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;

- (NSUInteger) massNumber;


@end

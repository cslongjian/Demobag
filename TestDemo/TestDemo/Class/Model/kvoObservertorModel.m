//
//  kvoObservertorModel.m
//  TestDemo
//
//  Created by hzl on 17/3/3.
//  Copyright © 2017年 chenlongjian. All rights reserved.
//

#import "kvoObservertorModel.h"

@implementation kvoObservertorModel

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"hight"]) {
        NSLog(@"Height is changed! new=%@,%@", [change valueForKey:NSKeyValueChangeNewKey],@"就是替换了个接受对象");
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}


@end

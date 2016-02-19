//
//  BarrageCell.m
//  CLBarrageDemo
//
//  Created by Supwin_mbp002 on 15/12/21.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import "BarrageCell.h"

@interface BarrageCell()
@property(nonatomic,strong) UIImageView *uiimageview;

@end
@implementation BarrageCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    // NSLog(@"cellForRowAtIndexPath");
        static NSString *identifier = @"status";
       // 1.缓存中取
        BarrageCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        // 2.创建
       if (cell == nil) {
            cell = [[BarrageCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
      if (self) {
          
      }
    return  self;
}


@end

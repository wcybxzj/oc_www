//
//  Bone.m
//  day16
//
//  Created by xiaomage on 15/6/26.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//


#import "Bone.h"

@implementation Bone

- (void)dealloc
{
    NSLog(@"Bone demalloc");
    [super dealloc];//erro ARC项目不能调用 demalloc
}
@end

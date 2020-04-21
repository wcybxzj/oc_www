//
//  Person.m
//  day18
//
//  Created by xiaomage on 15/6/29.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//


#import "Person.h"


@implementation Person


- (void)dealloc
{
    Block_release(_pBlock);
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end

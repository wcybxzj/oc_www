//
//  Person.m
//  day02_obj_method
//
//  Created by 杨秉熙 on 2019/2/15.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)eat{
    NSLog(@"吃");
}

-(void)run{
    NSLog(@"跑");
}

-(int)jump{
    NSLog(@"跳");
    return 0;
}

-(void)eatApple: (int)num{
    NSLog(@"吃%d个苹果", num);
}

//多参数方法
-(void)eatBanana: (int)num1 andOrange:(int) num2{
    NSLog(@"吃香蕉%d 吃橘子%d",num1, num2);
}

@end

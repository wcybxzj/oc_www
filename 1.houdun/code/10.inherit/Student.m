//
//  Student.m
//  10.inherit
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)eat{
    _weight=100;//使用父类的属性
    NSLog(@"学生在吃");
}
//重写父类的方法
-(void)run{
    [super run];//在子类调用父类的方法
    NSLog(@"学生在跑");
}
@end

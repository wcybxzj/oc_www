//
//  Dog.m
//  day13_varscope_and_multistate
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Dog.h"

@implementation Dog

//重写父类的方法
-(void)eat{
    NSLog(@"Dog eat");
}

//Dog独有的方法
-(void)run{
    NSLog(@"Dog run");
}
@end

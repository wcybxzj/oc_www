//
//  Person.m
//  day21_selector
//
//  Created by 杨秉熙 on 2019/2/19.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)run{
    NSLog(@"跑");
}

-(void)test:(NSNumber*)num1 andNum2:(NSNumber*)num2{
    NSLog(@"num1:%@, num2:%@", num1, num2);
}
@end

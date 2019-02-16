//
//  Calculator.m
//  day06_class_method
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(int) sumWithNum1:(int)num1 andNum2:(int)num2{
    _ret =  num1 + num2;
    return _ret;
}

+(int) sumWithNum3:(int)num3 andNum4:(int)num4{
    return num3 + num4;
}
@end

//
//  Calculator.h
//  day06_class_method
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject{
    int _ret;
}

-(int) sumWithNum1:(int)num1 andNum2:(int)num2;

+(int) sumWithNum3:(int)num3 andNum4:(int)num4;

@end

NS_ASSUME_NONNULL_END

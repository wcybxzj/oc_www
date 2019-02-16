//
//  main.m
//  day06_class_method
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //对象方法:
        //用对象调用
        //-开头
        //可以直接使用对象属性
        //不用做工具方法
        //可以调用自己的对象方法和类方法
        Calculator *cal = [Calculator new];
        int sum = [cal sumWithNum1:5 andNum2:6];
        NSLog(@"sum=%d", sum);
    
        //类方法:
        //用类调用
        //+开头
        //不可以直接使用成员变量
        //用做工具方法
        //只能调用自己的类方法,不能调用自己的对象方法
        sum = [Calculator sumWithNum3:10 andNum4:11];
        NSLog(@"sum=%d", sum);

        
        
    }
    return 0;
}

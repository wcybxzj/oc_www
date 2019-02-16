//
//  main.m
//  day02_obj_method
//
//  Created by 杨秉熙 on 2019/2/15.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HouDunWang.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //申请堆内存+初始化对象参数+返回地址
        Person *per = [Person new];
        //Person *per = [[Person alloc]init];
        [per eat];
        
        Person *per1 = [Person new];
        [per1 run];
        [per1 jump];
        [per1 eatApple:5];
        [per1 eatBanana:6 andOrange:7];
    }
    return 0;
}

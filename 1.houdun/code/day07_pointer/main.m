//
//  main.m
//  day07_pointer
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
//点语法:就是更方便使用set/get的方法
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new];
        //set/get方法
        [per setAge:18];
        NSLog(@"%d", [per age]);
        //点语法
        per.age=100;
        NSLog(@"%d", per.age);

    }
    return 0;
}

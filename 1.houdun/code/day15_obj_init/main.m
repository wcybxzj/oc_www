//
//  main.m
//  day15_obj_init
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//创建对象有2种方法:
//方法1:Person *per = [Person new]
//方法2:alloc+init

//为什么要用alloc+init?
//我们要重写init在初始化对象时候对属性进行自定义赋值

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Person *per = [Person new];
        //[per test];
        
        Person* p1 = [[[Person alloc]initWithAge:18]initWithName:@"dabing" andSex:1];
        NSLog(@"%d %@ %d", p1.age, p1.name, p1.sex);
        
    }
    return 0;
}

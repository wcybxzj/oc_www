//
//  main.m
//  instancetype和id的区别
//
//  Created by xiaomage on 15/6/23.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void test1(){
    
    // 如果init方法的返回值是instancetype, 那么将返回值赋值给一个其它的对象会报一个警告
    // 如果是在以前, init的返回值是id, 那么将init返回的对象地址赋值给其它对象是不会报错的
    //    NSString *str = [[Person alloc] init];
    id p = [[Person alloc] init];
}


void test2(){
//    instancetype p1 = [[Person alloc] init];//error
//    NSUInteger length = [str length];//error
//    NSLog(@"length = %lu", length);
}


int main(int argc, const char * argv[]) {



    

    
    return 0;
}

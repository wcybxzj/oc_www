//
//  main.m
//  集合对象的内存管理
//
//  Created by xiaomage on 15/6/29.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


// reatinCount = 1
// reatinCount = 2
// reatinCount = 1
// -[Person dealloc]
// ==========
void test1(){
    @autoreleasepool {
        // 1. 如果将一个对象添加到一个数组中, 那么数组会对对象进行一个retain
        Person *p = [Person new];
        NSLog(@"reatinCount = %lu", [p retainCount]);//1
        NSMutableArray *arrM = [[NSMutableArray alloc] init];

        [arrM addObject:p];
        NSLog(@"reatinCount = %lu", [p retainCount]);//2

        [p release];
        NSLog(@"reatinCount = %lu", [p retainCount]);//1
        // 当数组对象释放之后, 会给数组中所有的对象发送一条release消息
        [arrM release];//必须写!!!!
    }
    
    NSLog(@"==========");
}

//2020-04-21 18:45:03.658221+0800 集合对象的内存管理[4047:141022] reatinCount = 1
//2020-04-21 18:45:03.658407+0800 集合对象的内存管理[4047:141022] reatinCount = 2
//2020-04-21 18:45:03.658427+0800 集合对象的内存管理[4047:141022] -[Person dealloc]
void test2(){
    @autoreleasepool {
        Person *p = [Person new];
        NSLog(@"reatinCount = %lu", [p retainCount]);//1
        NSMutableArray *arrM = [[NSMutableArray alloc] init];
        [arrM addObject:p];
        NSLog(@"reatinCount = %lu", [p retainCount]);//2
        
        [p release]; // 1
        // 当数组移除一个对象之后, 会给这个对象发送一条release消息
        [arrM removeObject:p];
    }
}



int main(int argc, const char * argv[]) {
    //test1();
    test2();
    return 0;
}

//
//  main.m
//  多个对象的内存管理
//
//  Created by xiaomage on 15/6/24.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

void test1(){
    @autoreleasepool {
        // 1.创建两个对象
        Person *p = [[Person alloc] init];
        Room *r = [[Room alloc] init];
        r.no = 888;
        
        // 将房间赋值给人
        // 人需要使用这间房, 只要人在房间就一定要在
        p.room = r; // [p setRoom:r]
        
        [r release];
        
        // 在这行代码之前, 人都没有被释放
        NSLog(@"-----");
        
        // 人都不在了, 房间也必须销毁
        [p release];
    }
}

//问题:Set方法的内存管理解决此问题
//第一个房间没被释放
void test2(){
    @autoreleasepool {
        // 1.创建两个对象
        Person *p = [[Person alloc] init];
        Room *r = [[Room alloc] init];
        r.no = 888;
        
        p.room = r; // [p setRoom:r]
        [r release];
        
        Room *r2 = [[Room alloc] init];
        r2.no = 666;
        p.room = r2; // [p setRoom:r]
        [r2 release];
        
        // 在这行代码之前, 人都没有被释放
        NSLog(@"-----");
        
        // 人都不在了, 房间也必须销毁
        [p release];
    }
}


int main(int argc, const char * argv[]) {
    //test1();
    test2();

    return 0;
}

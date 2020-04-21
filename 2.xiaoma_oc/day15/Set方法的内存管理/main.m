//
//  main.m
//  Set方法的内存管理
//
//  Created by xiaomage on 15/6/24.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

//两个room都成功释放了
void test1(){
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

//同一个room重复设置，只释放一次
void test2(){
    // 1.创建两个对象
    Person *p = [[Person alloc] init];
    Room *r = [[Room alloc] init];
    r.no = 888;
    
    // 2.将房间赋值给人
    // 人需要使用这间房, 只要人在房间就一定要在
    p.room = r; // [p setRoom:r]
    [r release];
    
    //一个房间重复设置
    p.room = r;
    
    // 在这行代码之前, 人都没有被释放
    NSLog(@"-----");
    
    // 3,人都不在了, 房间也必须销毁
    [p release];
    
}


int main(int argc, const char * argv[]) {
    //test1();
    test2();

    return 0;
}

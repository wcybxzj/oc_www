//
//  main.m
//  day15
//
//  Created by xiaomage on 15/6/24.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 
 1.ARC: Automatic(自动) Reference(引用) Counting(计数)
 什么是自动引用计数? 
 不需要程序员管理内容, 编译器会在适当的地方自动给我们添加release/retain等代码
 注意点: OC中的ARC和java中的垃圾回收机制不太一样, java中的垃圾回收是系统干得, 而OC中的ARC是编译器干得
 
 2.MRC: Manul(手动) Reference(引用) Counting(计数)
 什么是手动引用计数?
 所有对象的内容都需要我们手动管理, 需要程序员自己编写release/retain等代码
 
 内存管理的原则就是有加就有减
 也就是说,
 一次alloc(引用加1)对应一次release(引用减1),
 一次retain(引用加1)对应一次relese(引用减1)
 
 3.如何将一个项目设置成MRC：
 选target->Build Settings->Objective-c Automatic Reference counting 选No
 只有设置为MRC时release和retain才能使用
 
 */
int main(int argc, const char * argv[]) {

    @autoreleasepool {
        // 只要创建一个对象默认引用计数器的值就是1
        Person *p = [[Person alloc] init];
        
        NSLog(@"retainCount = %lu", [p retainCount]); // 1
        
        // 只要给对象发送一个retain消息, 对象的引用计数器就会+1
        [p retain];
        
        NSLog(@"retainCount = %lu", [p retainCount]); // 2
        
        // 通过指针变量p,给p指向的对象发送一条release消息
        // 只要对象接收到release消息, 引用计数器就会-1
        // 只要一个对象的引用计数器为0, 系统就会释放对象
        [p release];

        // 需要注意的是: release并不代表销毁\回收对象, 仅仅是计数器-1
        NSLog(@"retainCount = %lu", [p retainCount]); // 1
        
        [p release]; // 0
        NSLog(@"--------");
    }
//    [p setAge:20];
    
    return 0;
}

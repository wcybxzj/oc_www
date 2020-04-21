//
//  main.m
//  ARC基本概念
//
//  Created by xiaomage on 15/6/26.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//1.本targetARC功能是开启的:Automatic reference counting ->yes
//2.ARC中不要自己去写retian release autorelease
//3.ARC中没有引用计数的
//4.只要没有强指针指向对象,对象立刻释放

//测试1:
// -[Person dealloc]
// ===================
void test0() {
    {
        Person *p1 = [[Person alloc] init];
    }
    //没有强指针指向立刻释放
    //Person demalloc
    NSLog(@"===================");
}

// -[Person dealloc]
// ===================
void test1(){
    {
        Person *p1 = [[Person alloc] init];
        p1 =nil;//没有强指针指向立刻释放
        NSLog(@"===================");
    }
}

//默认情况下所有的指针都是强指针
void test2(){
//     Person *p = [[[Person alloc] init] autorelease];//error
//     Person *p1 = [[Person alloc] init];
//     [p1 retain];//error
//     [p1 release];//error
}

void test3(){
    {
         // ARC的判断准则: 只要没有强指针指向对象, 对象就会释放
         // 默认情况下所有的指针都是强指针
         //        Person *p = [[Person alloc] init];
         //        p = nil;
         
         //        __strong Person *p = [[Person alloc] init];
         //        // 弱指针
         //        __weak Person *p2 = p;
         //        p = nil;
         
         // 在开发中, 千万不要使用一个弱指针保存一个刚刚创建的对象
         // 立即释放
         __weak Person *p = [[Person alloc] init];
     }
}


void test4(){
    Person *p = [[Person alloc] init];
    p = nil;
}

int main(int argc, const char * argv[]) {
    test0();
    //test1();
    //tset2();
//    tset3();
//    tset4();

    return 0;
}

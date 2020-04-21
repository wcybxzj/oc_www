//
//  main.m
//  property修饰符
//
//  Created by xiaomage on 15/6/24.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person1.h"

//不用@property(nonatomic, retain)
void test1(){
    Person1 *p = [Person1 new];
    Room *r = [Room new];
    Car *c =[Car new];
    Car *c2 =[Car new];
    Dog *d = [Dog new];
    
    p.room = r;
    p.car = c;
    p.car = c2;
    p.dog = d;
    
    NSLog(@"==========此行前无对象释放==========");
    
    [d release];
    [c release];
    [c2 release];
    [r release];
    [p release];
}

void test2(){
    Person *p = [Person new];
    Room *r = [Room new];
    Car *c =[Car new];
    Car *c2 =[Car new];

    Dog *d = [Dog new];

    p.room = r;
    p.car = c;
    p.car = c2;
    p.dog = d;

    NSLog(@"==========此行前无对象释放==========");
    
    [d release];
    [c release];
    [c2 release];
    [r release];
    [p release];
}

void test3(){
    Person *p = [Person new];
    Room *r = [Room new];
    
    p.room = r;
    [r release];
    
    // 换房了, 如果set方法中没有release旧值, 就会内存泄露
    Room *r2 = [Room new];
    p.room = r2;
    [r2 release];
    
    // 重复赋值
    //p.room = r;
    
    [p release];

}


int main(int argc, const char * argv[]) {
    test1();
    //test2();
    //test3();

    return 0;
}

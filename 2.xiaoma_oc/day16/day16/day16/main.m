//
//  main.m
//  day16
//
//  Created by xiaomage on 15/6/26.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//问题:
//如果要看到报错
//edit schema->diagnostics->zombie objects 选中
void test0(){
    Person *p  =[[Person alloc] init];
    [p run];
    [p release];
    [p run];//报错 EXC_BAD_INSTRUCTION
}

//解决方法1:
void test1(){
        Person *p  =[[Person alloc] init];

        [p run];

        // 时时刻刻都关注对象什么时候被释放
        [p release];
        p = nil;

        [p run];
}

//不会调用 Person的demalloc
void test2(){
    @autoreleasepool {
        Person *p  =[[Person alloc] init];
    }
}


//成功调用 Person的demalloc
void test3(){
    @autoreleasepool {
        Person *p  =[[Person alloc] init];
        [p release];
        [p run];//运行时 error
    }
}

//成功调用 Person的demalloc
void test4(){
    @autoreleasepool {
        Person *p  =[[Person alloc] init];
        [p autorelease];
        [p run];//ok
    }
    //[p run];//编译时error
}

//解决方发2: 通过使用autorelease，避免手动release来解决问题
void test5(){
     @autoreleasepool { // 创建一个自动释放池
         Person *p = [[Person alloc] init]; // 1
         // 不用关心对象什么时候释放, 只要能够访问p的地方都可以使用p
         // 只要调用了autorelease, 那么就不用调用release了
         p = [p autorelease];
         
         //避免手动retain造成autorelase范围结束后对象不能释放
         //[p retain]; // 2

         [p run];
     } // 自动释放池销毁了, 给自动释放池中所有的对象发送一条release消息
}

void test6(){
    // 创建一个自动释放池-方法1：
     @autoreleasepool {//对象池开始
         Person *p  = [[[Person alloc] init] autorelease];
         [p run];
     }//对象池结束
}

//解决方发3: 通过使用手动创建NSAutoreleasePool(废弃)，避免手动release来解决问题
void test7(){
    // 创建一个自动释放池-方法2(废弃)：
    // 自动释放池只是将release延迟了而已
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];//对象池开始

    Person *p = [[[Person alloc] init] autorelease];
    [p run];

    // 销毁一个自动释放池
    [pool release];//对象池结束
}

int main(int argc, const char * argv[]) {
    //test0();
    //test1();
    //test2();
    //test3();
    test4();
    //test5();
    //test6();
//    test7();

    return 0;
}

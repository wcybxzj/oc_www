//
//  main.m
//  autorelease注意事项
//
//  Created by xiaomage on 15/6/26.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void test1(){
    Person *p = [[[Person alloc] init] autorelease];
    [p run];
}


void test2(){
    @autoreleasepool {
        test1();
    }
}


void test3(){
    // 1.一定要在自动释放池中调用autorelease, 才会将对象放入自动释放池中
    //    Person *p = [[[Person alloc] init] autorelease];

     Person *p = [[Person alloc] init];
     @autoreleasepool {
         //        Person *p = [[[Person alloc] init] autorelease];
         //        [p run];
         
         // 2.在自动释放池中创建了对象, 一定要调用autorelease,才会将对象放入自动释放池中
         //        Person *p = [[Person alloc] init];
         //        [p run];
         
         // 3.只要在自动释放池中调用autorelease, 就会将对象放入自动释放池
         p = [p autorelease];
         [p run];
     }
   
}

//2020-04-20 15:26:12.533461+0800 autorelease注意事项[4644:117413] -[Person run]
//2020-04-20 15:26:12.533590+0800 autorelease注意事项[4644:117413] person age is 100
//2020-04-20 15:26:12.533599+0800 autorelease注意事项[4644:117413] -[Person dealloc]
//2020-04-20 15:26:12.533608+0800 autorelease注意事项[4644:117413] person age is 200
//2020-04-20 15:26:12.533614+0800 autorelease注意事项[4644:117413] -[Person dealloc]
void test4(){
 
    // 4.一个程序中可以创建N个自动释放池, 并且自动释放池还可以嵌套
    // 如果存在多个自动释放池的时候, 自动释放池是以 "栈" 的形式存储的
    // 栈的特点: 先进后出

    // 给一个对象方法发送一条autorelease消息, 永远会将对象放到栈顶的自动释放池
    @autoreleasepool { // 创建第一个释放池
        @autoreleasepool { // 创建第二个释放池
            @autoreleasepool { // 创建第三个释放池
                Person *p = [[[Person alloc] init] autorelease];
                [p run];
                p.age =100;
            } // 第1个释放池销毁

            Person *p1 = [[[Person alloc] init] autorelease];
            p1.age =200;
        }// 第2个释放池销毁
    }// 第3个释放池销毁
   
}

void test5(){
    @autoreleasepool {
        // 千万不要写多次autorelease
        // 一个alloc, new对应一个autorelease
        //        Person *p = [[[[Person alloc] init] autorelease] autorelease];
        
        // 如果写了autorelease就不要写release
        // 总之记住: 一个alloc/new对应一个autorelease或者release
        Person *p = [[[Person alloc] init] autorelease];
        [p release];
    }
}



int main(int argc, const char * argv[]) {
    //test1();//Person 没demalloc
    //test2();//Person dealloc
    //test3();//Person dealloc
    test4();
//    test5();
    

    
    return 0;
}

//
//  main.m
//  Copy与Property
//
//  Created by xiaomage on 15/6/29.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person1.h"
#import "Dog.h"

//copy用途1
//测试1: 问题: 修改了外面的变量, 影响到了对象中的属性
void test1(){
     NSMutableString *temp = [NSMutableString stringWithFormat:@"lnj"];
     Person *p = [[Person alloc] init];
     p.name = temp;//name的属性是retain
     
     // 问题: 修改了外面的变量, 影响到了对象中的属性
     [temp appendString:@" cool"];
     
     NSLog(@"name = %@", p.name);//lnj cool
     // 记住: 以后字符串属性都用copy
}

//测试2:解决
void test2(){
    NSMutableString *temp = [NSMutableString stringWithFormat:@"lnj"];
    Person1 *p = [[Person1 alloc] init];
    p.name = temp;//name的属性是retain
    
    // 问题: 修改了外面的变量, 影响到了对象中的属性
    [temp appendString:@" cool"];
    
    NSLog(@"name = %@", p.name);//lnj
    // 记住: 以后字符串属性都用copy
}


void test3(){
     __block int num = 10;
     void (^myBlock)() = ^{
         num = 20;
         NSLog(@"%i", num);//20
     };
     myBlock();
}

//问题:完美达到效果
void test4(){
    Person *p= [[Person alloc]init];
    NSLog(@"%lu", [p retainCount]);//1
    void (^myBlock)() = ^(){
        NSLog(@"%@", p);
        NSLog(@"%lu", [p retainCount]);//1 说明内外已经不是一个对象
    };
    myBlock();
    [p release];
}

void test5(){
    Person *p= [[Person alloc]init];
    NSLog(@"%lu", [p retainCount]);//1
    void (^myBlock)() = ^(){
        NSLog(@"%@", p);
        NSLog(@"%lu", [p retainCount]);//2
    };
    Block_copy(myBlock);//将block转移到堆中
    myBlock();
}

void test6(){
    Dog *d = [[Dog alloc] init];
    NSLog(@"retainCount = %lu", [d retainCount]);// 1
    Person *p = [[Person alloc] init];
    p.pBlock = ^{
        NSLog(@"%@", d);//2
    };
    NSLog(@"retainCount = %lu", [d retainCount]); // 1
    p.pBlock();
    
    [d release]; // 1
    [p release];
    // 如果狗在调用block之前释放了, 那么程序就会崩溃
}

//copy用途2
// 2.可以使用copy保存block, 这样可以保住block中使用的外界对象的命
// 避免以后调用block的时候, 外界的对象已经释放了
void test7(){
    Dog *d = [[Dog alloc] init]; // 1
    NSLog(@"retainCount = %lu", [d retainCount]);
    Person1 *p = [[Person1 alloc] init];
    p.pBlock = ^{
        NSLog(@"%@", d);//2
    };
    NSLog(@"retainCount = %lu", [d retainCount]); // 2
    p.pBlock();

    [p release];
    // 如果狗在调用block之前释放了, 那么程序就会崩溃
    [d release]; // 1
}

//person释放成功
void test8(){
    Person *p = [[Person alloc]init];
    p.name =@"ybx";
    p.pBlock = ^{
        NSLog(@"%@", p.name);
    };
    p.pBlock();
    [p release];
}

//person释放失败
void test9(){
    Person1 *p = [[Person1 alloc]init];
    p.name =@"ybx";
    p.pBlock = ^{
        NSLog(@"%@", p.name);
    };
    p.pBlock();
    [p release];
}


void test10(){
    // 3.注意点: copy block之后引发循环引用
    // 如果对象中的block又用到了对象自己, 那么为了避免内存泄露, 应该将对象修饰为__block
    __block Person1 *p = [[Person1 alloc] init]; // 1
    p.name = @"lnj";
    NSLog(@"retainCount = %lu", [p retainCount]);
    p.pBlock = ^{
        NSLog(@"name = %@", p.name); // 1
    };
    NSLog(@"retainCount = %lu", [p retainCount]);
    p.pBlock();
    [p release]; // 1
    //    [p release]; // 2B
}

int main(int argc, const char * argv[]) {
//    test1();
//
//    test2();
    
    //test3();

//    test4();
//    NSLog(@"=====");
//    test5();

    //test6();
    NSLog(@"=====");
    //test7();
    
//    test8();
//    NSLog(@"=====");
    test9();
    NSLog(@"=====");
    test10();
    return 0;
}

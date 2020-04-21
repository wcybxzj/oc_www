//
//  main.m
//  id类型
//
//  Created by xiaomage on 15/6/23.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

/*
 1.id是一个数据类型, 并且是一个动态数据类型
 既然是数据类型, 所以就可以用来
 1.1.定义变量
 1.2.作为函数的参数
 1.3.作为函数的返回值
 
 2.默认情况下所有的数据类型都是静态数据类型
 静态数据类型的特点:
 在编译时就知道变量的类型,
 知道变量中有哪些属性和方法
 在编译的时候就可以访问这些属性和方法,
 并且如果是通过静态数据类型定义变量, 如果访问了不属于静态数据类型的属性和方法, 那么编译器就会报错
 
 3.动态数据类型的特点:
 在编译的时候编译器并不知道变量的真实类型, 只有在运行的时候才知道它的真实类型
 并且如果通过动态数据类型定义变量, 如果访问了不属于动态数据类型的属性和方法, 编译器不会报错
 
 4.id和NSObject *的相同点:
    id == NSObject * 万能指针
 
 5.id和NSObject *的区别:
     NSObject *是一个静态数据类型
     id  是一个动态数据类型
 */

void test1(){
     Person *p = [Person new];
     p.age = 30;
     [p sleep];
    
}

void test2(){
    Person *p = [Student new];
    p.age = 30;
    [p sleep];
    //[p eat];//编译时错误 error
    Student *stu = (Student *)p;
    [stu eat];
}

void test3(){
     NSObject *obj = [Person new];
     //[obj test];//编译时错误 error
     NSObject *obj2 = [Student new];
}

void test4(){
    /*
     // 通过静态数据类型定义变量, 不能调用子类特有的方法
     // 通过动态数据类型定义变量, 可以调用子类特有的方法
     // 通过动态数据类型定义的变量, 可以调用私有方法
     // 弊端: 由于动态数据类型可以调用任意方法, 所以有可能调用到不属于自己的方法, 而编译时又不会报错, 所以可能导致运行时的错误
     // 应用场景: 多态, 可以减少代码量, 避免调用子类特有的方法需要强制类型转换
     */
    
     id obj = [Person new];
     [obj sleep];
     //[obj test];//虽然运行时错误，当时成功调用了私有方法
     //[obj eat];//运行时错误
     
     id obj2 = [Student new];
     [obj2 eat];
     //[obj2 test];//运行时错误
}

void test5(){
    // 为了避免动态数据类型引发的运行时的错误, 一般情况下如果使用动态数据类型定义一个变量, 在调用这个对象的方法之前会进行一次判断, 判断当前对象是否能够调用这个方法
    // isKindOfClass , 判断指定的对象是否是某一个类, 或者是某一个类的子类
    // isMemberOfClass : 判断指定的对象是否是当前指定的类的实例

    id obj = [Person new];
    id obj1 = [Student new];

    NSLog(@"==============1======================");
    if ([obj isKindOfClass:[Student class]]) {
        [obj eat];//不会执行
    }
    NSLog(@"==============2======================");
    if ([obj1 isKindOfClass:[Student class]]) {
        [obj1 eat];//执行
    }
    
    
    NSLog(@"===============3=====================");
    if ([obj isMemberOfClass:[Student class]]) {
        [obj eat];//不会执行
    }
    NSLog(@"===============4=====================");
    if ([obj1 isMemberOfClass:[Student class]]) {
        [obj1 eat];
    }

    NSLog(@"------");
}

int main(int argc, const char * argv[]) {
    //test1();
    //test2();
    //test3();
    //test4();
    //test5();
    
    return 0;
}

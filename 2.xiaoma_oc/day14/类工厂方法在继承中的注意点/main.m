//
//  main.m
//  类工厂方法在继承中的注意点
//
//  Created by xiaomage on 15/6/23.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

void test1(){
    //Student init
    //Person init
    Student *stu = [Student person];
    stu.age = 55;
    NSLog(@"age = %i", stu.age);
    stu.no = 888;
    NSLog(@"no = %i", stu.no);

    //Person init
    Person *p = [Person person];
}

void test2(){
    //Student init + Person init
    Student *stu = [Student personWithAge:30];
    stu.no = 888;
    
    //Person init
    Person *p = [Person personWithAge:30];

}

int main(int argc, const char * argv[]) {
    //test1();
    test2();
    return 0;
}

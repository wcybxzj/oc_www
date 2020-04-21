//
//  main.m
//  day18
//
//  Created by xiaomage on 15/6/29.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void test1(){
     //    NSArray *arr = [[NSArray alloc] init];
     //    NSArray *arr = [NSArray arrayWithObject:@"lnj"];
     // 数组中的nil是结束符
     NSArray *arr = [NSArray arrayWithObjects:@"lnj", @"lmj" ,@"jjj", @"cp", nil];
     NSLog(@"%@", arr);
}

//arr = (
//    "<Person: 0x100504290>",
//    "<NSObject: 0x1005099c0>",
//    lnj
//)
//count = 3
//last = lnj
//first = <Person: 0x100504290>
//arr[1] = <NSObject: 0x1005099c0>
void test2(){
    Person *p  = [Person new];
    NSObject *obj = [NSObject new];
    NSArray *arr = [NSArray arrayWithObjects:p, obj, @"lnj", nil];
    NSLog(@"arr = %@", arr);

    NSLog(@"count = %lu", [arr count]);
    NSLog(@"last = %@", [arr lastObject]);
    NSLog(@"first = %@", [arr firstObject]);
    NSLog(@"arr[1] = %@", [arr objectAtIndex:1]);
}

void test3(){
     NSArray *arr = [NSArray arrayWithObjects:@"lnj", @"lmj", @"jjj", @"zs", nil];
     if([arr containsObject:@"zs"])
     {
         NSLog(@"arr中包含zs");
     }else
     {
         NSLog(@"arr中不包含zs");
     }
}

void test4(){
    // 创建数组简写
    NSString *str = @"lnj";
    //    NSArray *arr = [NSArray arrayWithObjects:@"lnj", @"lmj", @"jjj", nil];
    NSArray *arr = @[@"lnj", @"lmj", @"jjj"];
    // 获取数组元素的简写
    NSLog(@"%@", [arr objectAtIndex:0]);
    NSLog(@"%@", arr[0]);
}


int main(int argc, const char * argv[]) {
    //test1();
    test2();
//    test3();
//    test4();
    return 0;
}

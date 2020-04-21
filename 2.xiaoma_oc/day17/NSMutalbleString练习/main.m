//
//  main.m
//  NSMutalbleString练习
//
//  Created by xiaomage on 15/6/28.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 需求: 将3个520it拼接在一起, 中间用空格隔开
 520it 520it 520it
 */
void test1(){
    NSString *subStr = @"520it";
    // 520it-
    NSString *newStr = [subStr stringByAppendingString:@" "];
    // 520it-520it
    newStr = [newStr stringByAppendingString:subStr];
    // 520it-520it-
    newStr = [newStr stringByAppendingString:@" "];
    // 520it-520-520it
    newStr = [newStr stringByAppendingString:subStr];
    NSLog(@"%@",newStr);
}

void test2(){
    NSString *subStr = @"520it";

     // 注意: 在开发中如果需要对字符串进行频繁的操作, 不要使用不可变的字符串
     NSString *newStr = [subStr stringByAppendingString:@" "];
     for (int i = 0; i < 2; ++i) {
         newStr = [newStr stringByAppendingString:subStr];
         newStr = [newStr stringByAppendingString:@" "];
     }
     
     //newStr = [newStr stringByReplacingCharactersInRange:NSMakeRange(newStr.length -1 , 1) withString:@""];
     newStr = [newStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
     NSLog(@"newStr = |%@|", newStr);
}

void test3(){
    NSString *subStr = @"520it";
    // 创建一个空得字符串
    NSMutableString *strM  = [NSMutableString string];
    for (int i = 0; i < 3; ++i) {
        // 1.添加一个520it
        [strM appendString:subStr];
        // 2.添加一个空格
        [strM appendString:@" "];
    }
    NSLog(@"strM = |%@|", strM);

    [strM deleteCharactersInRange:NSMakeRange(strM.length - 1, 1)];
    NSLog(@"strM = |%@|", strM);
}


int main(int argc, const char * argv[]) {
//    test1();
//    test2();
    test3();
    return 0;
}

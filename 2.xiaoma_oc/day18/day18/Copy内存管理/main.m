//
//  main.m
//  Copy内存管理
//
//  Created by xiaomage on 15/6/29.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>

//测试1:copy 浅拷贝
//1次alloc   对应1次release
//1次retain  对应1次release
//1次copy    对应1次release
void test1(){
    @autoreleasepool {
         //NSString *str1 = @"lnj";
         char *cstr = "this is a c string";
         NSString *str1 = [[NSString alloc] initWithUTF8String:cstr];
         NSLog(@"str = %lu", [str1 retainCount]); // 1
         // 不会产生新对象, 会对原有对象进行一次retain

        NSString *str2 = [str1 copy];
        NSLog(@"str = %lu", [str1 retainCount]); // 2
        NSLog(@"str = %lu", [str2 retainCount]); // 2
        
        // 注意点:
        //如果是浅拷贝, 那么会对拷贝的对象进行一次retain,
        //那么我们就需要对拷贝出来的对象进行一次release
        [str2 release]; // 1
        NSLog(@"str = %lu", [str1 retainCount]); // 1
        NSLog(@"str = %lu", [str2 retainCount]); // 1
        [str1 release]; // 0
    }
}

//测试2:mutableCopy 深拷贝
//2020-04-21 20:21:06.818375+0800 Copy内存管理[5549:200566] str1 = 1
//2020-04-21 20:21:06.818559+0800 Copy内存管理[5549:200566] 0x103a04640 0x103a04810
//2020-04-21 20:21:06.818569+0800 Copy内存管理[5549:200566] str2 = 1
void test2(){
    @autoreleasepool {
        char *cstr = "this is a c string";
        NSString *str1 = [[NSString alloc] initWithUTF8String:cstr];
        NSLog(@"str1 = %lu", [str1 retainCount]); // 1
        
        // NSString调用  mutableCopy 会生成一个新的对象
        NSMutableString *str2 = [str1 mutableCopy];
        NSLog(@"%p %p", str1, str2);
        NSLog(@"str2 = %lu", [str2 retainCount]); // 1
        
        [str1 release];
        [str2 release];
    }
}


int main(int argc, const char * argv[]) {
    test1();
    //test2();

    return 0;
}

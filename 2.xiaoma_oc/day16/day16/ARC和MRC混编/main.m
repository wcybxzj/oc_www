//
//  main.m
//  ARC和MRC混编
//
//  Created by xiaomage on 15/6/26.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//


//作用oc对象变量, ARC中的property+strong == MRC中的retain
//作用oc对象变量, ARC中的property+weak == MRC中的assign
//作用普通类型变量,ARC中的property+weak == MRC中的assign
#import <Foundation/Foundation.h>
#import "Bone.h"


int main(int argc, const char * argv[]) {
    //@autoreleasepool {
        // 江哥提示:insert code here...
        NSLog(@"Hello, World!");
        
        Bone *b = [[Bone alloc] init];

    //}
    
    
    return 0;
}

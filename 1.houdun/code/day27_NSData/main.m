//
//  main.m
//  day27_NSData
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSData类:一种数据类型
        //在传输时,传输的是二进制文件
        NSString *str = @"dabing";
        NSData *data = [str dataUsingEncoding: NSUTF8StringEncoding];
        NSLog(@"%@", data);
        
        NSString *str1 = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str1);
    }
    return 0;
}

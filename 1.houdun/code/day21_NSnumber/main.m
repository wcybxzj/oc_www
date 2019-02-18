//
//  main.m
//  day21_NSnumber
//
//  Created by 杨秉熙 on 2019/2/19.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSNumber:专门用于封装简单数据类型的类，可以将简单类型封装成对象
        
        //封装
        int a = 10;
        float b = 20.5;
        NSNumber *anum = [[NSNumber alloc] initWithInt:a];
        NSNumber *bnum = [[NSNumber alloc] initWithFloat:b];
        NSLog(@"a=%@ b=%@",anum, bnum);
        
        //解封
        int newA = [anum intValue];
        float newB = [bnum floatValue];
        NSLog(@"newa=%d, newb=%.2f",newA, newB);
    }
    return 0;
}

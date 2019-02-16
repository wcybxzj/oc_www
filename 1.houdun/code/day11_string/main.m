//
//  main.m
//  day11_string
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
//c中最小单位是字节,1个字节8比特
//oc中最小单位是字符,1个字符可能2个字节
//oc中的字符串是通过一个类表示NSString
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *str ="c str";
        printf("%s\n",str);
        
        NSString *str2 = @"oc str2";
        NSLog(@"%@", str2);//%@打印的是对象
    
        NSString *str3 = @"oc str3";
        NSLog(@"%@", str3);
        
        //类方法将2个string对象进行拼接
        NSString *str4 = [NSString stringWithFormat:@"%@---%@",str2,str3];
        NSLog(@"%@", str4);
    }
    return 0;
}

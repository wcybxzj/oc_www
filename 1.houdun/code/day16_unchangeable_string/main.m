//
//  main.m
//  day16_invariable_string
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
//不可变的字符串:NSString
//相当于c语言种 char *str= "abc"; str[0]='a';//报错
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //通过对象方法:
        //simple string
        NSString *str1 =@"dabing";
        NSLog(@"%@",str1);
        
        //create string by exist string
        NSString *str2 = [[NSString alloc] initWithString:str1];
        NSLog(@"%@", str2);
        
        //create oc string by c string
        char * cstr ="c-string";
        NSString *str3 = [[NSString alloc]initWithUTF8String:cstr];
        NSLog(@"%@", str3);
        
        //format string
        NSString *str4 = [[NSString alloc]initWithFormat:@"%@!!!!!%@",str2,str3];
        NSLog(@"%@",str4);
        
        //通过类方法
        //创建字符串,使用已经存在的字符串做参数
        NSString *str5 = [NSString stringWithFormat:str4];
        NSLog(@"%@", str5);
        
        //通过已经存在的方法可以
        NSString *str6 = [NSString stringWithFormat:str5];
        NSLog(@"%@", str6);
        
        //create oc string by c string
        NSString *str7 = [NSString  stringWithUTF8String:cstr];
        NSLog(@"%@", str7);
        
        //format string
        NSString *str8 = [NSString stringWithFormat: @"%@!!!!!%@",str2,str3];
        NSLog(@"%@",str8);
        
        //string append
        NSString *str9 = [str5 stringByAppendingString:str6];
        NSLog(@"%@",str9);
    }
    return 0;
}

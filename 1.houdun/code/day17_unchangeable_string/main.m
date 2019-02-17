//
//  main.m
//  day17_string
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.求长度
        NSString *str1 =@"ybx 123";
        NSUInteger len1 = [str1 length];
        NSLog(@"%lu", len1);
        
        //2.取第index为1的字符
        char a = [str1 characterAtIndex:1];
        NSLog(@"%c",a);
        
        //3.比较字符是否相等
        //bool 1=>yes 0=>no
        NSString *str2 = @"ybx 456";
        NSString *str3 = @"ybx 123";
        BOOL is1 = [str1 isEqualToString:str2];
        BOOL is2 = [str1 isEqualToString:str3];
        if (is1) {
            NSLog(@"str1 eq str2");
        }else{
            NSLog(@"str1 not eq str2");
        }
        if (is2) {
            NSLog(@"str1 eq str3");
        }else{
            NSLog(@"str1 not eq str3");
        }

        //4.比较字符串,区分大小写
        NSString *str4 = @"ybx";
        NSString *str5 = @"ybx 123";
        NSComparisonResult re = [str4 compare:str5];
        if (re == NSOrderedAscending) {
            NSLog(@"str4 < str5");
        }else if(re == NSOrderedSame){
            NSLog(@"str4 == str5");
        }else if(re == NSOrderedDescending){
            NSLog(@"str4 > str5");
        }
        
        //5.比较字符串,不区分大小写
        NSString *str6 = @"ybx";
        NSString *str7 = @"yBx 123";
        NSComparisonResult re1 = [str6 compare:str7 options:NSCaseInsensitiveSearch];
        if (re1 == NSOrderedAscending) {
            NSLog(@"str6 < str7");
        }else if(re1 == NSOrderedSame){
            NSLog(@"str6 == str7");
        }else if(re1 == NSOrderedDescending){
            NSLog(@"str6 > str7");
        }
        
        //6.大小写转换
        NSString *str8 = @"Dabing";
        NSString *str9 = [str8 lowercaseString];
        NSLog(@"%@",str9);
        
        //7.只首字母大写
        NSString *str10 = @"dabing";
        NSString *str11 = [str10 capitalizedString];
        NSLog(@"%@",str11);
        
        //8.查找地1个出现的字符
        NSString *str12 = @"I love u, u love me";
        NSRange range = [str12 rangeOfString:@"love"];
        if (range.location == NSNotFound) {
            NSLog(@"not found");
        }else{
            NSLog(@"found");
        }
        if (range.length == 0) {
            NSLog(@"range length is zero");
        }
        NSLog(@"range.length:%lu", range.length);//4 love长度
        NSLog(@"range.location:%lu", range.location);//2 love的索引位置

        //9.从右到左查找
        NSRange range2 = [str12  rangeOfString:@"love" options:NSBackwardsSearch];
        NSLog(@"range2.length:%lu", range2.length);//4 love长度
        NSLog(@"range2.location:%lu", range2.location);//12 love的索引位置

        //10.string to int
        NSString *str13 = @"123";
        int num14 = [str13 intValue];
        NSLog(@"%d",num14);
        
        //11.字符提取love
        NSString *str15 = @"wo-love-u";
        NSString *str16 =[str15 substringFromIndex:3];
        NSLog(@"%@",str16);
        NSString *str17 = [str16 substringToIndex:4];
        NSLog(@"%@",str17);
        
        //12.提取love 优化版
        NSRange range3 = NSMakeRange(3, 4);
        NSString *str18 = [str15 substringWithRange:range3];
        NSLog(@"%@",str18);
    }
    return 0;
}

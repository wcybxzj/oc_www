//
//  main.m
//  day18_changeable_string
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
//可变字符串:NSMutableString
//1.相当于c语言 char *str =malloc(10); str[0]="a";str[1]="\0";
//2.可变字符串是不可变字符串的子类,不可变字符串的方法可变字符串一般可以使用
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //可变字符串的和不可变字符串类似的方法:
        //1.创建空
        //可变string,必须alloc+init方式创建
        NSMutableString *str1 = [[NSMutableString alloc]init];
        
        //2.Capacity:随意给大小就行
        NSMutableString *str2 = [NSMutableString stringWithCapacity:20];
        
        //3.创建string基于已经存在的字符串
        NSString *str3 =@"dabing";
        NSMutableString *str4 = [[NSMutableString alloc]initWithString:str3];

        //4.创建string基于已经存在的c字符串
        char *str5 ="dabing";
        NSMutableString *str6 = [[NSMutableString alloc]initWithUTF8String:str5];
        
        //======================================================================
        //可变字符串的特有方法:
        //ADD1
        NSMutableString *str7 =[NSMutableString stringWithString:@"dabing"];
        NSString *str8 =@" love u";
        NSString *str9 =[str7 stringByAppendingString:str8];
        NSLog(@"%@",str9);
        //ADD2
        [str7 appendString:@"!"];
        NSLog(@"%@",str7);
      
        //INSERT:在可变字符串中间插入数据
        NSMutableString *str10 = [NSMutableString stringWithString:@"12345"];
        [str10 insertString:@"abc" atIndex:3];
        NSLog(@"%@",str10);
        
        //DELETE
        NSMutableString *str11 = [NSMutableString stringWithString:@"12345"];
        NSRange range11 = NSMakeRange(2, 1);//删除原来位置2,插入长度是1
        [str11 deleteCharactersInRange:range11];
        NSLog(@"%@", str11);
        
        //UPDATE1:
        //用后边的string替换前面的string
        NSMutableString *str12 = [NSMutableString stringWithString:@"12345"];
        [str12 setString:@"6789"];
        NSLog(@"%@", str12);
        
        //UPDATE2:
        NSMutableString *str13 = [NSMutableString stringWithString:@"12345"];
        NSRange range13 = NSMakeRange(2, 3);
        [str13 replaceCharactersInRange:range13 withString:@"ybx"];
        NSLog(@"%@",str13);
        
        //SELECT
        NSMutableString *str14 = [NSMutableString stringWithString:@"dabing"];
        for (int loop=0; loop < [str14 length]; loop++) {
            char c = [str14 characterAtIndex:loop];
            NSLog(@"%c", c);
        }
        
        
    }
    return 0;
}

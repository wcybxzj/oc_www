//
//  main.m
//  day25_NSDate_NSString
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //当前 格林威治时间
        NSDate *date = [NSDate date];
        NSLog(@"date = %@", date);
        
        //当前时间(秒)
        //加1个小时
        NSDate *newDate =[date dateByAddingTimeInterval:1*60*60];
        NSLog(@"date = %@", newDate);
        
        //将来的某个时间
        NSDate *furtureDate = [NSDate distantFuture];
        NSLog(@"furtureDate=%@", furtureDate);
        
        //过去的摸个时间
        NSDate *pastDate = [NSDate distantPast];
        NSLog(@"pastDate=%@", pastDate);
        
        //==================================================
        
        //NSDate和NSString不能直接转换,需要转换类
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        //指定转换格式
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        //将NSDate转换成NSString
        NSString *dateStr = [formatter stringFromDate:date];
        NSLog(@"%@", dateStr);
        
        //NSString->NSDate
        NSDate *newDate2 = [formatter dateFromString:dateStr];
        NSLog(@"%@", newDate2);
    }
    return 0;
}

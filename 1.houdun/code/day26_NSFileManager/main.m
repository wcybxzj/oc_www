//
//  main.m
//  day26_NSFileManager
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //文件管理类:NSFileManager 专门用于管理文件的单例类一般有default就是单例
        NSFileManager * manager = [NSFileManager defaultManager];

        //潜遍历 只遍历一层
        NSString *path = @"/Users/ybx/www/test";
        NSArray *arr1 = [manager contentsOfDirectoryAtPath:path error:nil];
        NSLog(@"arr1=%@", arr1);
        
        //深度遍历
        NSArray *arr2 = [manager subpathsAtPath:path];
        NSLog(@"arr1=%@", arr2);
       
        
        for (NSString *string0 in arr2) {
            NSLog(@"string0=%@",string0);
        }
        
        //获取后缀是.m的文件
        for (NSString *string1 in arr2) {
            if ([string1 hasSuffix:@".abc"]) {
                NSLog(@"string1=%@",string1);
            }
        }
        
        //取得有后缀的所有内容
        for (NSString *string2 in arr2) {
            if ([string2 pathExtension].length!=0) {
                NSLog(@"string2=%@", [string2 pathExtension]);
            }
        }
        
        // 获得文件的后缀名（不带'.'）
        NSString *filePath = @"/1/2.txt";
        NSString * ext = [filePath pathExtension];
        NSLog(@"%@",ext);//输出txt
        
        //取得路径的各个路径
        NSArray *arr3 = [path pathComponents];
        NSLog(@"arr3 =%@",arr3);//arr3 =("/", Users, ybx, www, test)
    }
    return 0;
}

//
//  main.m
//  day01_introduce
//
//  Created by 杨秉熙 on 2019/2/14.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


//new project->macos->command line tool

//cmd + r 运行
//cmd + b 编译 只编译.m文件
int main(int argc, const char * argv[]) {
     {
        //NSLog自动换行
        NSLog(@"Hello, World!");
        
        
        Person *per = [[Person alloc]init];
        [per kidding];
    }
    return 0;
}

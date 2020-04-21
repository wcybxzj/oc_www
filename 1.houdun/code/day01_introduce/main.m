//
//  main.m
//  day01_introduce
//
//  Created by 杨秉熙 on 2019/2/14.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "New Group/Person2.h"
//new project->macos->command line tool

//cmd + r 运行
//cmd + b 编译 只编译.m文件
int main(int argc, const char * argv[]) {
     {
        //NSLog自动换行
        NSLog(@"Hello, World!");
        
    
        Person *per = [[Person alloc]init];
        [per kidding];
         
         Person2 *per2 = [[Person2 alloc]init];
         per2->_age=123;
         NSLog(@"person2 age:%d",per2->_age);

    }
    return 0;
}

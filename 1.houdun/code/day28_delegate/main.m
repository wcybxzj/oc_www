//
//  main.m
//  day28_delegate
//
//  Created by 杨秉熙 on 2019/2/21.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 代理:也叫委托,实际就是组合
 class A想做一件事件但是自己不去做,让class B去做
 class B不是固定的只要能帮Class A做事就行
 
 */
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [[Student alloc]init];
        
        Broker *bro = [[Broker alloc]init];
        stu.broker=bro;
        [stu findBroker];
        
    }
    return 0;
}

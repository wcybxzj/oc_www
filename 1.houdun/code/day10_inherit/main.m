//
//  main.m
//  10.inherit
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new];
        [per run];
        
        Student *stu = [Student new];
        [stu run];
        [stu eat];
        
        NSLog(@"student weight:%f", stu.weight);
        
        Teacher *t =[Teacher new];
        [t run];
        
    }
    return 0;
}

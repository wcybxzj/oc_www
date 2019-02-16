//
//  main.m
//  day05_set_get
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new];
        [per setAge:100];
        NSLog(@"age:%d", [per age]);
   }
    return 0;
}

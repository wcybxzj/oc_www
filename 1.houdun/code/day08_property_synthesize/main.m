//
//  main.m
//  day08_property
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
//property:用来替代在.h中声明属性的set/get方法
//synthesize:用来替代.m中去实现set/get方法
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new];
        per.houseNum = 2;
        NSLog(@"houseNUm:%d", per.houseNum);

    }
    return 0;
}

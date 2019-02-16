//
//  main.m
//  day09_property2
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//property加强版
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new];
        per.houseNum= 123;
        per.carNum= 456;
        per.moneyNum= 789;

        NSLog(@"%d", per.houseNum);
        NSLog(@"%d", per.carNum);
        NSLog(@"%d", per.moneyNum);

    }
    return 0;
}

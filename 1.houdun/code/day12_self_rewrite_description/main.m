//
//  main.m
//  day12_self_rewrite_description
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//self 重写description

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new];
        per.age=18;
        per.height=180;
        per.weight=180;
        per.name = @"dundun";
        
        //需要Person.m中重写description()
        NSLog(@"%@", per);
        

    }
    return 0;
}

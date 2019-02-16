//
//  Person.m
//  day15_obj_init
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Person.h"

@implementation Person

//重写init
-(id)initWithAge:(int)age{
    //当前对象self是父类init初始化的
    if (self = [super init]) {
        self.age = age;
    }
    return self;
}

-(id)initWithName:(NSString*)name andSex:(int)sex{
    //当前对象self是父类init初始化的
    if (self = [super init]) {
        self.name = name;
        self.sex = sex;
    }
    return self;
}

-(void)test{
    NSLog(@"%@", self);//输出:0x1039040d0
    NSLog(@"%@", [super init]);//输出:0x1039040d0
    NSLog(@"%@", [super init]);//输出:0x1039040d0
}

@end

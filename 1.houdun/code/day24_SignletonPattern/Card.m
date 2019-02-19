//
//  Card.m
//  day24_SignletonPattern
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Card.h"

//设置全局静态变量
static Card *instance = nil;

@implementation Card
+(Card*)ShareSingle {
    //thread safe
    @synchronized (self) {
            //判断对象是否存在,如果不存在就创建
            if (instance==nil) {
                instance = [[Card alloc]init];
            }
    }
    return instance;
}

//没太理解不研究了
//重写copyWithZone()保证单例对象的唯一性
+(id)allocWithZone:(struct _NSZone *)zone
{
    @synchronized (self) {
        if (instance == nil) {
            instance = [super allocWithZone:zone];
        }
    }
    return instance;
}


@end

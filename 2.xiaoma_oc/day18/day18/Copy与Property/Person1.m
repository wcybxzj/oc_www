//
//  Person1.m
//  Copy与Property
//
//  Created by 杨秉熙 on 2020/4/21.
//  Copyright © 2020 xiaomage. All rights reserved.
//

#import "Person1.h"

@implementation Person1
- (void)dealloc
{
    //Block_release的意思:
    //只要给block发送一条release消息, block中使用到的对象也会收到该消息
    Block_release(_pBlock);
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end

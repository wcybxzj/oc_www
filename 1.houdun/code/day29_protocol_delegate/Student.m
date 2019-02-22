//
//  Student.m
//  day29_protocol_delegate
//
//  Created by 杨秉熙 on 2019/2/22.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Student.h"

@implementation Student
//容错处理:判断Delegate是否有findHouse的能力,如果有才去,没有就不执行

-(void)findHelp{
    //
    SEL sel = @selector(findHouse);
    //判断_delegate是否有findHouse方法
    if ([_delegate respondsToSelector:sel]) {
        [_delegate performSelector:sel];
    }
}

@end

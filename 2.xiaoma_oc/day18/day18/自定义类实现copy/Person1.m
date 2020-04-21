//
//  Person1.m
//  自定义类实现copy
//
//  Created by 杨秉熙 on 2020/4/22.
//  Copyright © 2020 xiaomage. All rights reserved.
//

#import "Person1.h"

@implementation Person1

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@, age = %i", _name, _age];
}
@end

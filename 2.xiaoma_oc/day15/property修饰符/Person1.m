//
//  Person1.m
//  property修饰符
//
//  Created by 杨秉熙 on 2020/4/19.
//  Copyright © 2020 xiaomage. All rights reserved.
//

#import "Person1.h"

//不用retain 代码写死你
@implementation Person1

- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}

//如果像Person.h中 @property(nonatomic, retain) Room *room;
//就不用手写这些代码了
- (void)setRoom:(Room *)room
{
    // 1.判断传入的对象和当前对象是否一样
    if (_room != room) {
        // 2.release以前的对象
        [_room release];
        // 3.retain传入的对象
        _room = [room retain];
    }
}

- (void)setCar:(Car *)car
{
    if (_car != car) {
        [_car release];
        _car = [car retain];
    }
}

- (void)setDog:(Dog *)dog
{
    if (_dog != dog) {
        [_dog release];
        _dog = [dog retain];
    }
}

- (Room *)room
{
return _room;
}

- (Car *)car
{
return _car;
}

- (Dog *)dog
{
return _dog;
}

- (void)dealloc
{
    [_room release];
    [_car release];
    [_dog release];
    
    NSLog(@"%s", __func__);
    [super dealloc];
}
@end

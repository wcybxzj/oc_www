//
//  Person1.h
//  property修饰符
//
//  Created by 杨秉熙 on 2020/4/19.
//  Copyright © 2020 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"
#import "Car.h"
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person1 : NSObject
{
    Room *_room;
    Car *_car;
    Dog *_dog;
    int _age;
}

- (void)setRoom:(Room *)room;
- (void)setCar:(Car *)car;
- (void)setDog:(Dog *)dog;

- (Room *)room;
- (Car *)car;
- (Dog *)dog;


- (void)setAge:(int)age;
- (int)age;



@end

NS_ASSUME_NONNULL_END

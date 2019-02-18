//
//  Person.h
//  day15_obj_init
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

//id:万能指针，可以指向任何对象,不需要*指针
//id:相当于c语言的void *
@property(nonatomic, assign)int age;
@property(nonatomic, copy)NSString *name;
@property(nonatomic, assign)int sex;


-(id)initWithAge:(int)age;
-(id)initWithName:(NSString *)name andSex:(int)sex;

-(void)test;
@end

NS_ASSUME_NONNULL_END

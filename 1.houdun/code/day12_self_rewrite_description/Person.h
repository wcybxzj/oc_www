//
//  Person.h
//  day12_self_rewrite_description
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//@public 任何人都可以访问
//@protected 本类和子类可访问(默认)
//@private 只有本类可访问用(@property自动生成的成员变量就是这种)
//@package 包内可访问
@interface Person : NSObject
{
    char *_name;
@public int _age;
@protected int _height;
@private int _weight;
}

@property(nonatomic, assign)int age;
@property(nonatomic, assign)int height;
@property(nonatomic, assign)int weight;
//NSString要用 copy修饰
@property(nonatomic, copy)NSString *name;

@end

NS_ASSUME_NONNULL_END

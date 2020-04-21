//
//  Person1.h
//  自定义类实现copy
//
//  Created by 杨秉熙 on 2020/4/22.
//  Copyright © 2020 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person1 : NSObject

@property (nonatomic, assign) int age;

@property (nonatomic, copy) NSString *name;
@end

NS_ASSUME_NONNULL_END

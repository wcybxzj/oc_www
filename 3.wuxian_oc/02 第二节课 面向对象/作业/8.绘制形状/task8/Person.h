//
//  Person.h
//  task8
//
//  Created by wei.chen on 12-12-13.
//  Copyright (c) 2012年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Shape;
@interface Person : NSObject {
    NSString *_name;
}

- (void)paint:(Shape *)shape;

+ (void)test;

@end

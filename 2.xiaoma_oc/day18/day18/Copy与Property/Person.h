//
//  Person.h
//  day18
//
//  Created by xiaomage on 15/6/29.
//  Copyright (c) 2015年 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^myBlock)();

@interface Person : NSObject

@property (nonatomic, retain) NSString *name;

@property (nonatomic, assign) myBlock pBlock;

@end

//
//  Person1.h
//  Copy与Property
//
//  Created by 杨秉熙 on 2020/4/21.
//  Copyright © 2020 xiaomage. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^myBlock)();

@interface Person1 : NSObject

//copy用途1
@property (nonatomic, copy) NSString *name;

//copy用途2
@property (nonatomic, copy) myBlock pBlock;
@end


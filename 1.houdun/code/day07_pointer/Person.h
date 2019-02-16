//
//  Person.h
//  day07_pointer
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    int _age;
}

-(void)setAge:(int)age;
-(int)age;

@end

NS_ASSUME_NONNULL_END

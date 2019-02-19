//
//  Card.h
//  day24_SignletonPattern
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject
@property(nonatomic,assign) int money;

//通过类方法得到一个本类的对象
+(Card*)ShareSingle;

@end

NS_ASSUME_NONNULL_END

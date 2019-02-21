//
//  Student.h
//  day28_delegate
//
//  Created by 杨秉熙 on 2019/2/22.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Broker.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
@property (nonatomic, assign) Broker *broker;
-(void)findBroker;
@end

NS_ASSUME_NONNULL_END

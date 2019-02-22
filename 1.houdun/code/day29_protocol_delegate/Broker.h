//
//  Broker.h
//  day29_protocol_delegate
//
//  Created by 杨秉熙 on 2019/2/22.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

//                              遵守协议
@interface Broker : NSObject<StudentDelegate>
-(void)brokerWork;
@end

NS_ASSUME_NONNULL_END

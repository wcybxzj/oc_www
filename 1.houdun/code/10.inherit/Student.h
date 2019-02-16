//
//  Student.h
//  10.inherit
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

//创建Stdent时候要制定其父类是Person
@interface Student : Person
-(void) eat;
-(void)run;
@end

NS_ASSUME_NONNULL_END

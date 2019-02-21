//
//  Student.h
//  day29_protocol_delegate
//
//  Created by 杨秉熙 on 2019/2/22.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//协议代理名:当前类名Delegate
@protocol StudentDelegate <NSObject>
    -(void)findHouse;
@end

@interface Student : NSObject
    //Stuent class定义一个属性
    //属性名:delegate
    //类型:id(相当于c中void *,也就是说任意类型)
    //<xxx>:属性delegate遵守协议是StudentDelegate,也就是说delegate中有findHouse方法
    @property(nonatomic,assign) id <StudentDelegate> delegate;

    -(void)findHelp;
@end

NS_ASSUME_NONNULL_END

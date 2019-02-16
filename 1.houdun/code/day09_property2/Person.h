//
//  Person.h
//  day09_property2
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//@property(修饰词,修饰词,...)
//1.权限:readonly/readwrite
//2.线程:nonatomic(常用)/atmoic
//3.设置独特的set/get方法名字（没什么用）
//4.内存管理MRC:手动内存管理
//assign:修饰简单类型int/char/double
//copy retain:用来修饰对象
//5.内存管理ARC:自动内存管理
//assign:修饰简单类型int/char/double
//weak 或者stong:用来修饰对象
//copy retian:也可用于ARC

//=======================================

//property基础版
//@interface Person : NSObject{
//    int _houseNum;
//}
//@property int houseNum;

//property加强版
//这里1句话取代了.h中的设置属性和.m中的set/get方法实现
@interface Person : NSObject;
@property(nonatomic, assign)int houseNum;
@property(nonatomic, assign)int carNum;
@property(nonatomic, assign)int moneyNum;

@end

NS_ASSUME_NONNULL_END

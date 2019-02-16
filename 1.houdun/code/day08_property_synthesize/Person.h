//
//  Person.h
//  day08_property
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    int _houseNum;
    int _carNum;
    int _moneyNUm;
}

//@property的用处就是不用自己去声明set/get方法
@property int houseNum;
//-(void)setHouseNum:(int)houseNum;
//-(int)houseNum;

@end

NS_ASSUME_NONNULL_END

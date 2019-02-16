//
//  Person.h
//  day02_obj_method
//
//  Created by 杨秉熙 on 2019/2/15.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    int _age;
    int _sex;
}

//对象方法都是用'-'开头
-(void)eat;

-(void)run;

-(int)jump;

-(void)eatApple: (int)num;

-(void)eatBanana: (int)num1 andOrange:(int) num2;

@end

NS_ASSUME_NONNULL_END

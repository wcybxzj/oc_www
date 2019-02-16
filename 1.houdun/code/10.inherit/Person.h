//
//  Person.h
//  10.inherit
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//因为这里Person要被继承所以必须写在类中生命属性
@interface Person : NSObject{
    float _height;
    float _weight;
}

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float weight;

-(void) run;

@end

NS_ASSUME_NONNULL_END

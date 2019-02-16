//
//  Person.m
//  day12_self_rewrite_description
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Person.h"

@implementation Person
-(NSString*) description{
    //self在类方法中代表类,在对象方法中代表对象
    //当前方法是对象方法,-开头,self就是当前对象
    NSString *str = [NSString stringWithFormat:@"%d %d %d %@",
                     _height, _weight, self.age, self.name];
    return str;
}
@end

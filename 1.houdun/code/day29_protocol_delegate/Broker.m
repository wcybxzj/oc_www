//
//  Broker.m
//  day29_protocol_delegate
//
//  Created by 杨秉熙 on 2019/2/22.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Broker.h"

@implementation Broker
-(void)findHouse{
    NSLog(@"经纪人帮学生找房子");
}

-(void)brokerWork{
    Student *stu = [[Student alloc]init];
    
    stu.delegate = self;
    
    [stu findHelp];
}
@end

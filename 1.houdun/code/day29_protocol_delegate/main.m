//
//  main.m
//  day29_protocol_delegate
//
//  Created by 杨秉熙 on 2019/2/22.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Broker.h"

//1.协议和代理一起使用的例子

//2.谁遵守协议谁去实现协议

//3.
//主动类(有需求的类):协议定义的位置
//被动类:代理类实现的位置


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Broker *bro = [[Broker alloc]init];
        [bro brokerWork];

    }
    return 0;
}

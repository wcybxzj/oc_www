//
//  main.m
//  day24_SignletonPattern
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Husband.h"
#import "Wife.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1个类,在程序执行过程中只允许通过"类方法"创建1个对象
        //在调用这个对象的方法和属性的时候只能通过这个对象来调用
        
        Card* card1 = [Card ShareSingle];
        card1.money = 1000;
        NSLog(@"%d", card1.money);
        
        Husband *husband1 = [[Husband alloc]init];
        [husband1 playMajiang];
        
        Husband *wife1 = [[Husband alloc]init];
        [wife1 playMajiang];
        
        NSLog(@"%d", card1.money);

        

    }
    return 0;
}

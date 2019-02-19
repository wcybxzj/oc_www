//
//  Wife.m
//  day24_SignletonPattern
//
//  Created by 杨秉熙 on 2019/2/20.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import "Wife.h"
#import "Card.h"
@implementation Wife
-(void)playMajiang{
    Card *card1 = [Card ShareSingle];
    card1.money -=100;
    NSLog(@"老婆输钱了 还剩:%d", card1.money);
}
@end

//
//  main.m
//  day22_NSDicctionary
//
//  Created by 杨秉熙 on 2019/2/19.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //不可变字典:NSDictionay
        //字典种的每个元素内容可变
        //key-value:key要唯一，所有key是无序的
        
        //1.创建字典
        NSDictionary *d1 = [[NSDictionary alloc]init];
        NSDictionary *d2 = [NSDictionary dictionary];
        NSDictionary *d3 = @{@"1":@"Beijing",@"2":@"Shanghai",@"3":@"Beijing"};
        NSLog(@"d3=%@", d3);
        
        //2.对象方法创建字典
        //value在前，全部用逗号分隔,nil不能省略
        NSDictionary *d4 = [[NSDictionary alloc]
                            initWithObjectsAndKeys:@"bj",@"1",@"tianjin",@"2", nil];
        NSLog(@"%@", d4);
        
        NSDictionary *d5 = [[NSDictionary alloc]
                            initWithObjects:@[@"bj",@"sh"] forKeys:@[@"11",@"22"]];
        NSLog(@"%@", d5);
        
        //3.类方法创建字典
        //略
        
        //4.不可变字典的其他方法:
        NSDictionary *d6 = @{@"1":@"bj", @"2":@"tj", @"3":@"sh"};
        //取1个值
        NSString *str1 = [d6 objectForKey:@"1"];
        NSLog(@"%@", str1);
        
        //取1个值
        NSString *str2 = d6[@"2"];
        NSLog(@"%@",str2);
        
        //取多个值
        NSArray *arr1=[d3 objectsForKeys:@[@"11",@"22",@"6"] notFoundMarker:@"Not Found"];
        NSLog(@"%@", arr1);
        
        //get all keys 无序的
        NSArray *arr2=[d3 allKeys];
        NSLog(@"%@",arr2);
        
        //get all values
        NSArray *arr3=[d3 allValues];
        NSLog(@"%@",arr3);
        
        //取出value对应的所有keys
        NSArray *arr4=[d3 allKeysForObject:@"Beijing"];
        NSLog(@"%@",arr4);
        
        //for1
        for (int i=1; i<=[d3 count]; i++) {
            NSString *k1 = [NSString stringWithFormat:@"%d", i];
            NSLog(@"%@=>%@", k1,d3[k1]);
        }
        
        NSLog(@"===============");
        
        //for_in
        for (NSString *k2 in d3) {
            NSLog(@"%@=>%@", k2,d3[k2]);
        }
    }
    return 0;
}

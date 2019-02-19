//
//  main.m
//  day23_NSMutableDictionary
//
//  Created by 杨秉熙 on 2019/2/19.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.可变字典是说字典内的内容可以修改
        //2.可变字典是不可变字典的子集
        
        //3.创建空字典
        //对象方法创建
        NSMutableDictionary *d1 = [[NSMutableDictionary alloc]init];
        NSMutableDictionary *d2 = [[NSMutableDictionary alloc]initWithCapacity:100];
        //类方法创建
        NSMutableDictionary *d3 = [NSMutableDictionary dictionaryWithCapacity:100];
        NSMutableDictionary *d4 = [NSMutableDictionary dictionary];
        
        //4.可变字典不能用简单方式创建
        
        //5.通过已存在的字典创建新的可变字典
        //对象方法创建
        NSDictionary *d5 = @{@"1":@"Beijing", @"2":@"Shanghai", @"3":@"Guangzhou"};
        NSMutableDictionary *d6 = [[NSMutableDictionary alloc]initWithDictionary:d5];
        NSMutableDictionary *d7 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Bj",@"1",@"Sh",@"2", nil];
        NSMutableDictionary *d8 = [[NSMutableDictionary alloc]
                                   initWithObjects:@[@"beijing",@"shanghai"] forKeys:@[@"11",@"22"]];
        
        //类方法创建
        NSMutableDictionary *d9 = [NSMutableDictionary
                                        dictionaryWithDictionary:d5];
        
        NSMutableDictionary *d10 = [NSMutableDictionary
                                        dictionaryWithObjectsAndKeys:@"Beijing",@"1",@"Shanghai", @"2" ,nil];
 
        NSMutableDictionary *d11 = [NSMutableDictionary
                                    dictionaryWithObjects:@[@"beijing",@"shanghai"] forKeys: @[@"1",@"2"]];
        
        //======================================================================
        //可变字典独有方法:
        //ADD:
        NSDictionary *d12 = @{@"1":@"Beijing",@"2":@"Nanjing"};
        NSMutableDictionary *d13 = [[NSMutableDictionary alloc] initWithDictionary:d12];
        NSLog(@"%@", d13);
        
        //ADD 1个 key->value
        [d3 setObject:@"dabing" forKey:@"123"];
        NSLog(@"%@", d3);
        
        //ADD 多个key-value
        [d3 addEntriesFromDictionary:@{@"7":@"xifan",@"8":@"jiaozi", @"9":@"rice"}];
        NSLog(@"%@", d3);

        //delet one key->value
        [d3 removeObjectForKey:@"123"];
        NSLog(@"%@", d3);
        
        //delete many key->value
        [d3 removeObjectsForKeys:@[@"7",@"8"]];
        NSLog(@"%@", d3);
        
        //deletall
        [d3 removeAllObjects];
        NSLog(@"%@", d3);
        
        //UPDATE
        NSDictionary *d14 = @{@"1":@"Beijing",@"2":@"Nanjing", @"3":@"Tokyo", @"4":@"hancheng"};
        
        //后边的字典替换前面的字典
        
        
        
    }
    return 0;
}

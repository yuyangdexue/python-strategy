//
//  Cat.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "Cat.h"
#import "Comparative.h"
#import "NSObject+Sort.h"
#import "CatHeightComparative.h" //按照身高排序
#import "CatWeightComparative.h" // 按照体重排序
@interface Cat ()<Comparative>

@property (nonatomic,strong)CatHeightComparative *catHeightComparative;

@end
@implementation Cat

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    self.comparative =self;

    self.catHeightComparative =[[CatHeightComparative alloc]init];
    return self;
}


- (NSInteger)comparativeTo:(id) object
{
    return [self.catHeightComparative comparativeFrom:self To:object];
}


@end

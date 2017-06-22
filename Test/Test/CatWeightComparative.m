//
//  CatWeightComparative.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "CatWeightComparative.h"
#import "Cat.h"
@implementation CatWeightComparative


- (NSInteger)comparativeFrom:(id)objectFore To:(id) objectBack
{
    Cat *catFore = (Cat *)objectFore;
    Cat *catBack = (Cat *)objectBack;
    if (catFore.weight>catBack.weight) {
        return 1;
    }
    else if (catFore.weight==catBack.weight)
    {
        return 0;
    }
    else if (catFore.weight<catBack.weight)
    {
        return -1;
    }
    return -100;
}
@end

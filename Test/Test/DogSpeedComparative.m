//
//  DogSpeedComparative.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "DogSpeedComparative.h"
#import "Dog.h"
@implementation DogSpeedComparative

+ (NSInteger)comparativeFrom:(id)objectFore To:(id) objectBack
{
    Dog *catFore = (Dog *)objectFore;
    Dog *catBack = (Dog *)objectBack;
    if (catFore.speed>catBack.speed) {
        return 1;
    }
    else if (catFore.speed==catBack.speed)
    {
        return 0;
    }
    else if (catFore.speed<catBack.speed)
    {
        return -1;
    }
    return -100;
}

@end

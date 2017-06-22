//
//  NSObject+Sort.h
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Comparative.h"



@interface NSObject (Sort)

@property (nonatomic,weak)id <Comparative> comparative;

@end

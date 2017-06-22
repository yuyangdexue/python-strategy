//
//  DataSorter.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "DataSorter.h"
#import "Comparative.h"
#import "NSObject+Sort.h"

@interface DataSorter ()
@property (nonatomic,strong)NSArray *array;

@end
@implementation DataSorter

- (void)sort:(NSArray *)array
{
    
    NSMutableArray *mutabArray = [NSMutableArray arrayWithArray:array];
    
    for (NSInteger i=mutabArray.count-1;i>0;i--)
    {
        
        for (NSInteger j = 0; j<i;j++ ) {
            
            NSObject *object1 =[array objectAtIndex:j];
            NSObject *object2 =[array objectAtIndex:j+1];
            if ([object1.comparative comparativeTo:object2]==1) {
                  [mutabArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
            
        }
    }
    
    self.array = mutabArray;
}


- (void)print
{
    NSLog(@"%@",self.array);
}


@end

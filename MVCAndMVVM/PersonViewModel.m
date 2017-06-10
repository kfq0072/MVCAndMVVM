//
//  PersonViewModel.m
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import "PersonViewModel.h"
#import "Person.h"

@interface PersonViewModel()

@property (nonatomic, strong) NSArray *myDataArray;
@end
@implementation PersonViewModel


- (void)requestPersonModelData:(void(^)(NSArray *))callBackPersonArray
{
    [self getData];
    
    callBackPersonArray(_myDataArray);
}

- (void)getData {
    // 加载模型数据
    NSMutableArray *mArray = [NSMutableArray new];
    if (_myDataArray == nil) {
        for (int i = 0 ; i< 20; i++) {
            NSString *nameStr = [NSString stringWithFormat:@"TOM:%d",i];
            Person *p = [Person new];
            p.name = nameStr;
            [mArray addObject:p];
        }
        _myDataArray = [mArray copy];
    }
}
@end

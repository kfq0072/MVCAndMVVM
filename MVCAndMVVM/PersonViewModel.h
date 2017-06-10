//
//  PersonViewModel.h
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^CallBack)(NSArray *);
@class Person;
@interface PersonViewModel : NSObject
- (instancetype)initPersonViewModel;
- (void)requestPersonModelData:(void(^)(NSArray *))callBackPersonArray;
@end

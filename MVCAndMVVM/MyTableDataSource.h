//
//  MyTableDataSource.h
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MyTableDataSource : NSObject<UITableViewDataSource>
@property (nonatomic,strong)NSArray *personArray;
@end

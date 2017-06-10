//
//  MyTableDataSource.m
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import "MyTableDataSource.h"
#import "Person.h"

@implementation MyTableDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.personArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    // 从 Modal 数据模型中取出数据更新 View 的内容
    Person *p = self.personArray[indexPath.row];
    cell.textLabel.text = p.name;
    
    return cell;
}
@end

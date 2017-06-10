//
//  MVCViewController.m
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import "MVCViewController.h"
#import "Person.h"

@interface MVCViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *_mTableView;
}
@property (nonatomic, strong) NSArray *myDataArray;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MVC";
    [self creatTableView];
    [self getData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (void)creatTableView
{
    if (_mTableView == nil) {
        UITableView *myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                                                 self.view.bounds.size.height)];
        [myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellId"];
        myTableView.delegate = self;
        myTableView.dataSource = self;
        [self.view addSubview:myTableView];
        _mTableView = myTableView;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.myDataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    // 从 Modal 数据模型中取出数据更新 View 的内容
    Person *p = self.myDataArray[indexPath.row];
    cell.textLabel.text = p.name;
    
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

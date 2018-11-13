//
//  MVVMViewController.m
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import "MVVMViewController.h"
#import "MyTableDataSource.h"
#import "PersonViewModel.h"
#import "ExternObject.h"
@interface MVVMViewController (){
    UITableView *_mTableView;
    MyTableDataSource *_dataSource;
}

@end

@implementation MVVMViewController

-(void)dealloc
{

}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatTableView];
    PersonViewModel *viewModel = [PersonViewModel new];
    [viewModel requestPersonModelData:^(NSArray *personArray) {
        _dataSource.personArray = personArray;
        [_mTableView reloadData];
    }];
    NSLog(@"%@",MJTypeInt);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)creatTableView
{
    if (_mTableView == nil) {
        UITableView *myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,
                                                                                 self.view.bounds.size.height)];
        [myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellId"];
        _dataSource = [MyTableDataSource new];
        myTableView.dataSource = _dataSource;
        [self.view addSubview:myTableView];
        _mTableView = myTableView;
    }
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

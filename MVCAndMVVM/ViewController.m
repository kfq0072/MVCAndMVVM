//
//  ViewController.m
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import "ViewController.h"
#import "MVCViewController.h"
#import "MVVMViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)mvcClick:(id)sender {
    MVCViewController *mvc = [MVCViewController new];
    [self.navigationController pushViewController:mvc animated:YES];
}
- (IBAction)mvvmClick:(id)sender {
    MVVMViewController *mvvm = [MVVMViewController new];
    [self.navigationController pushViewController:mvvm animated:YES];
}


@end

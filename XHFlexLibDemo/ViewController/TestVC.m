//
//  TestVC.m
//  XHFlexLibDemo
//
//  Created by xiaohui on 2018/8/14.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "TestVC.h"
#import "TestPushVC.h"
#import "TestPresentVC.h"

@interface TestVC ()

@end

@implementation TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Test FlexLib";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)pushVC:(id)sender {
    TestPushVC *vc = [[TestPushVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)presentVC {
    TestPresentVC *vc = [[TestPresentVC alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end

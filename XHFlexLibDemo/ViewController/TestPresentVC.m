//
//  TestPresentVC.m
//  XHFlexLibDemo
//
//  Created by xiaohui on 2018/8/16.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "TestPresentVC.h"

@interface TestPresentVC ()

@end

@implementation TestPresentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}
    
- (void)backToHome {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

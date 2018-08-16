//
//  TestCell.m
//  XHFlexLibDemo
//
//  Created by xiaohui on 2018/8/9.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "TestCell.h"

@interface TestCell ()
    
@property (nonatomic, strong) UIImageView *headIcon;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *typeLabel;
@property (nonatomic, strong) UILabel *dateLabel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation TestCell

// 因为仅content影响布局
- (void)setData:(NSDictionary*)data forHeight:(BOOL)height {
    if (!height) {
        self.headIcon.image = [UIImage imageNamed:[data objectForKey:@"head"]];
        self.nameLabel.text = [data objectForKey:@"name"];
        self.typeLabel.text = [NSString stringWithFormat:@"[%@]",[data objectForKey:@"type"]];
        self.dateLabel.text = [data objectForKey:@"date"];
        self.titleLabel.text = [data objectForKey:@"title"];
    }
    self.contentLabel.text = [data objectForKey:@"content"];
}

- (void)showDetailPage {
    if (self.pressHeadBlock) {
        self.pressHeadBlock(111);
    }
}

@end

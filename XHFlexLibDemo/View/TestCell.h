//
//  TestCell.h
//  XHFlexLibDemo
//
//  Created by xiaohui on 2018/8/9.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "FlexBaseTableCell.h"

@interface TestCell : FlexBaseTableCell

@property (nonatomic, copy) void (^pressHeadBlock)(NSInteger id);

- (void)setData:(NSDictionary*)data forHeight:(BOOL)height;

@end

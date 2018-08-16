//
//  TestPushVC.m
//  XHFlexLibDemo
//
//  Created by xiaohui on 2018/8/16.
//  Copyright © 2018年 XIAOHUI. All rights reserved.
//

#import "TestPushVC.h"
#import "TestCell.h"
#import "FlexFrameView.h"
#import "TestDetailVC.h"

@interface TestPushVC ()<UITableViewDataSource, UITableViewDelegate>
    
@property (nonatomic, strong) NSMutableArray *dataSource;
@property (nonatomic, strong) NSMutableArray *heightArray;
    
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UILabel *headerLabel;
@property (nonatomic, strong) TestCell *testCell;

@end

@implementation TestPushVC
    
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"列表";
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.testCell = [[TestCell alloc] initWithFlex:nil reuseIdentifier:nil];
    
    __weak TestPushVC *weakSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [weakSelf loadInBackground];
    });
}

- (void)loadInBackground
{
    NSArray *dataArray =
    @[
      @{
          @"head": @"addnewtype",
          @"name": @"小明",
          @"type": @"初级",
          @"date": @"2018-7-15",
          @"title": @"大家好，我是小明",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小红",
          @"type": @"中级",
          @"date": @"2018-7-16",
          @"title": @"大家好，我是小红",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小强",
          @"type": @"高级",
          @"date": @"2018-7-17",
          @"title": @"大家好，我是小强",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈abc哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小灰",
          @"type": @"资深",
          @"date": @"2018-7-18",
          @"title": @"大家好，我是小灰",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小莉",
          @"type": @"小白",
          @"date": @"2018-7-19",
          @"title": @"大家好，我是小莉",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小明",
          @"type": @"初级",
          @"date": @"2018-7-15",
          @"title": @"大家好，我是小明",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小红",
          @"type": @"中级",
          @"date": @"2018-7-16",
          @"title": @"大家好，我是小红",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小强",
          @"type": @"高级",
          @"date": @"2018-7-17",
          @"title": @"大家好，我是小强",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈abc",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小灰",
          @"type": @"资深",
          @"date": @"2018-7-18",
          @"title": @"大家好，我是小灰",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          },
      @{
          @"head": @"addnewtype",
          @"name": @"小莉",
          @"type": @"小白",
          @"date": @"2018-7-19",
          @"title": @"大家好，我是小莉",
          @"content": @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
          }
      ];
    
    NSMutableArray *heights = [NSMutableArray array];
    CGFloat tableWidth = [[UIScreen mainScreen]bounds].size.width;
    for (NSDictionary *data in dataArray) {
        [self.testCell setData:data forHeight:YES];
        CGFloat h = [self.testCell heightForWidth:tableWidth];
        [heights addObject:[NSNumber numberWithFloat:h]];
    }
    
    //异步加载本地数据
    dispatch_async(dispatch_get_main_queue(), ^{
        self.dataSource = [dataArray mutableCopy];
        self.heightArray = heights;
        [self onLoadFinish];
    });
}
    
- (void)onLoadFinish
{
    __weak TestPushVC *weakSelf = self;
    CGRect rcFrame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 0);
    FlexFrameView *header = [[FlexFrameView alloc] initWithFlex:@"Header" Frame:rcFrame Owner:self];
    header.flexibleHeight = YES;
    self.headerLabel.text = @"这个例子演示了在后台线程计算布局高度：）这个例子在横竖屏切换时没有重新计算高度，因此切换横竖屏时会有问题：）";
    [header layoutIfNeeded];
    header.onFrameChange = ^(CGRect rc){
        [weakSelf tableHeaderFrameChange];
    };
    self.tableView.tableHeaderView = header;
    [self.tableView reloadData];
}
    
- (void)tableHeaderFrameChange
{
    [self.tableView beginUpdates];
    [self.tableView setTableHeaderView:self.tableView.tableHeaderView];
    [self.tableView endUpdates];
}
    
#pragma mark - UITableView dataSource & delegate
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}
    
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *identifier = @"TestTableCellIdentifier";
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[TestCell alloc] initWithFlex:nil reuseIdentifier:identifier];
    }
    [cell setData:self.dataSource[indexPath.row] forHeight:NO];
    cell.pressHeadBlock = ^(NSInteger id) {
        [self.navigationController pushViewController:[[TestDetailVC alloc] init] animated:YES];
    };
    return cell;
}
    
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < self.heightArray.count) {
        return [[self.heightArray objectAtIndex:indexPath.row]floatValue];
    }
    return 0;
}
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
    
@end

//
//  ZZZhanjianListViewController.m
//  ZZZhanjianBook
//
//  Created by Santos on 2/29/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import "ZZZhanjianListViewController.h"
#import "ZZZhanjianModel.h"

@interface ZZZhanjianListViewController ()

@property (nonatomic, strong) NSMutableArray *zhanJianList;

@end

@implementation ZZZhanjianListViewController


- (instancetype)init {
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        [self getZhanJianList];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)getZhanJianList {
    _zhanJianList = [[NSMutableArray alloc] init];
    
    ZZZhanjianModel *model1 = [[ZZZhanjianModel alloc] initWithName:@"01 胡德"];
    ZZZhanjianModel *model2 = [[ZZZhanjianModel alloc] initWithName:@"02 声望"];

    
    
    
    [_zhanJianList addObject:model1];
    [_zhanJianList addObject:model2];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_zhanJianList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    ZZZhanjianModel *model = _zhanJianList[indexPath.row];
    cell.textLabel.text = [model description];
    
    return cell;
}

@end

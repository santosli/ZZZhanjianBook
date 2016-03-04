//
//  ZZZhanjianListViewController.m
//  ZZZhanjianBook
//
//  Created by Santos on 2/29/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import "ZZZhanjianListViewController.h"
#import "ZZZhanjianModel.h"
#import "ZZHTTPOperation.h"

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
    
    NSString *downloadListURL = @"http://1.zzzhanjian.applinzi.com/getZhanJianList";
    
    [ZZHTTPOperation downloadWithURL:downloadListURL completion:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSDictionary *jsonDic = (NSDictionary*)responseObject;
            NSDictionary *list = jsonDic[@"list"];
            
            NSArray *keys = [list allKeys];
            NSArray *sortedArray = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
                return [obj1 compare:obj2 options:NSNumericSearch];
            }];
            
            for (NSString *zhanJianId in sortedArray) {
                NSLog(@"id: %@, name: %@", zhanJianId, [list objectForKey:zhanJianId]);
                ZZZhanjianModel *model = [[ZZZhanjianModel alloc] initWithName:[list objectForKey:zhanJianId] id:zhanJianId];
                [_zhanJianList addObject:model];
            }
            [[self tableView] reloadData];
        }
    }];
    
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

//
//  ZZZhanjianDetailModel.h
//  ZZZhanjianBook
//
//  Created by Santos on 3/17/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZZZhanjianDetailModel : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSMutableDictionary * details;

- (instancetype)initWithName:(NSString *)name details:(NSMutableDictionary *)details;

@end

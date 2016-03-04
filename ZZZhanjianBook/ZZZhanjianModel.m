//
//  ZZZhanjianModel.m
//  ZZZhanjianBook
//
//  Created by Santos on 2/29/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import "ZZZhanjianModel.h"

@implementation ZZZhanjianModel

- (instancetype) initWithName:(NSString *)name id:(NSString *)zhanJianId {
    self = [super init];
    
    if (self) {
        _name = name;
        _zhanJianId = zhanJianId;
    }
    
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"No.%@  %@", _zhanJianId, _name];
}

@end

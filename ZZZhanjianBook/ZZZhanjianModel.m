//
//  ZZZhanjianModel.m
//  ZZZhanjianBook
//
//  Created by Santos on 2/29/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import "ZZZhanjianModel.h"

@implementation ZZZhanjianModel

- (instancetype) initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        _name = name;
    }
    
    return self;
}


- (NSString *)description {
    return _name;
}

@end

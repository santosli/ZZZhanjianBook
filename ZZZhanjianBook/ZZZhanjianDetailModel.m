//
//  ZZZhanjianDetailModel.m
//  ZZZhanjianBook
//
//  Created by Santos on 3/17/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import "ZZZhanjianDetailModel.h"

@implementation ZZZhanjianDetailModel

- (instancetype)initWithName:(NSString *)name details:(NSMutableDictionary *)details {
    self = [super init];
    
    if (self) {
        _name = name;
        if (details) {
            _details = details;
        } else {
            _details = [[NSMutableDictionary alloc] init];
        }
    }
    
    return self;
}

@end

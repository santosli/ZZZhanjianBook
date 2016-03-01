//
//  ZZZhanjianModel.h
//  ZZZhanjianBook
//
//  Created by Santos on 2/29/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZZZhanjianModel : NSObject

@property (nonatomic, strong) NSString *zhanJianId;
@property (nonatomic, strong) NSString *name;

- (instancetype) initWithName:(NSString *)name;

- (NSString *)description;

@end

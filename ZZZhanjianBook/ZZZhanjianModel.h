//
//  ZZZhanjianModel.h
//  ZZZhanjianBook
//
//  Created by Santos on 2/29/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZZZhanjianDetailModel.h"

@interface ZZZhanjianModel : NSObject

@property (nonatomic, strong) NSString * zhanJianId;
@property (nonatomic, strong) NSString * name;

@property (nonatomic, strong) ZZZhanjianDetailModel * basicDetail;
@property (nonatomic, strong) ZZZhanjianDetailModel * textDetail;
@property (nonatomic, strong) ZZZhanjianDetailModel * gaiDetail;
@property (nonatomic, strong) ZZZhanjianDetailModel * skillDetail;
@property (nonatomic, strong) ZZZhanjianDetailModel * equipDetail;
@property (nonatomic, strong) ZZZhanjianDetailModel * dropDetail;

- (instancetype) initWithName:(NSString *)name id:(NSString *)zhanJianId;

- (NSString *)description;

@end

//
//  ZZHTTPOperation.h
//  ZZZhanjianBook
//
//  Created by Santos on 3/3/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZZHTTPOperation : NSObject

typedef void (^completionHandler)(NSURLResponse *response, id responseObject, NSError *error);

+ (void)downloadWithURL:(NSString *)URLString completion:(completionHandler)completionHandler;

@end

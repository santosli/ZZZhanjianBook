//
//  ZZHTTPOperation.m
//  ZZZhanjianBook
//
//  Created by Santos on 3/3/16.
//  Copyright © 2016 santos. All rights reserved.
//

#import "ZZHTTPOperation.h"
#import <AFNetworking/AFNetworking.h>

@implementation ZZHTTPOperation

+ (void)downloadWithURL:(NSString *)URLString completion:(completionHandler)completionHandler {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:URLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        completionHandler(response, responseObject, error);
    }];
    
    [dataTask resume];
}

@end

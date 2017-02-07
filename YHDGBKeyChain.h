//
//  YHDGBKeyChain.h
//  testIdOfPhone
//
//  Created by Cui yuhe on 17/2/7.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHDGBKeyChain : NSObject
+ (NSMutableDictionary *)getKeychainQuery:(NSString *)service;

+ (void)save:(NSString *)service data:(id)data;

+ (id)load:(NSString *)service;

+ (void)delete:(NSString *)service;
@end

//
//  YHUniqueIdentifierTool.m
//  testIdOfPhone
//
//  Created by Cui yuhe on 17/2/7.
//  Copyright © 2017年 Cui yuhe. All rights reserved.
//

#import "YHUniqueIdentifierTool.h"
#import <UIKit/UIKit.h>
#import "YHDGBKeyChain.h"
//#import <AdSupport/AdSupport.h> //测试时可使用IDFA,因为发布时属于带广告.万一审核时因为实际上没广告,不给过.

static NSString * const KEY_IN_KEYCHAIN = @"com.cuiyuhe.app";
static NSString * const KEY_UDID = @"com.cuiyuhe.app.UDID";

@implementation YHUniqueIdentifierTool

+ (void)saveUDID
{
    NSMutableDictionary *udidKVPairs = [NSMutableDictionary dictionary];
    //测试时可使用IDFA
//    [udidKVPairs setObject:[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString] forKey:KEY_UDID];
    [udidKVPairs setObject:[[[UIDevice currentDevice] identifierForVendor] UUIDString] forKey:KEY_UDID];
    [YHDGBKeyChain save:KEY_IN_KEYCHAIN data:udidKVPairs];
}

+ (id)readUDID
{
    NSMutableDictionary *udidKVPairs = (NSMutableDictionary *)[YHDGBKeyChain load:KEY_IN_KEYCHAIN];
    return [udidKVPairs objectForKey:KEY_UDID];
}

+ (void)deleteUDID
{
    [YHDGBKeyChain delete:KEY_IN_KEYCHAIN];
}


@end

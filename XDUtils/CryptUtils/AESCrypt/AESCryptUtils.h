//
//  AESCryptUtils.h
//  XDUtils
//
//  Created by su xinde on 14-8-31.
//  Copyright (c) 2014年 su xinde. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AESCryptUtils : NSObject

+ (NSString *)encrypt:(NSString *)message
             password:(NSString *)password;
+ (NSString *)decrypt:(NSString *)base64EncodedString
             password:(NSString *)password;

@end

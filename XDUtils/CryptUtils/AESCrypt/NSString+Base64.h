//
//  NSString+Base64.h
//  XDUtils
//
//  Created by su xinde on 14-8-31.
//  Copyright (c) 2014年 su xinde. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Base64)

+ (NSString *)base64StringFromData:(NSData *)data
                            length:(NSUInteger)length;

@end

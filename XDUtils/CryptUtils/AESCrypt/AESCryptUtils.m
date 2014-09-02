//
//  AESCryptUtils.m
//  XDUtils
//
//  Created by su xinde on 14-8-31.
//  Copyright (c) 2014年 su xinde. All rights reserved.
//

#import "AESCryptUtils.h"

#import "NSData+Base64.h"
#import "NSString+Base64.h"
#import "NSData+CommonCrypto.h"

@implementation AESCryptUtils

+ (NSString *)encrypt:(NSString *)message password:(NSString *)password {
    NSData *encryptedData = [[message dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:[[password dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash] error:nil];
    NSString *base64EncodedString = [NSString base64StringFromData:encryptedData length:[encryptedData length]];
    return base64EncodedString;
}

+ (NSString *)decrypt:(NSString *)base64EncodedString password:(NSString *)password {
    NSData *encryptedData = [NSData base64DataFromString:base64EncodedString];
    NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:[[password dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash] error:nil];
    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
}

@end

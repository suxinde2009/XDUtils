//
//  MarcosTestCases.m
//  XDUtils
//
//  Created by su xinde on 14/10/29.
//  Copyright (c) 2014年 su xinde. All rights reserved.
//

#import "MarcosTestCases.h"

@implementation MarcosTestCases

+ (void)tests
{
    //NSLog(@"%@",kApp);
    NSLog(@"%f",iOS);

    VoidBlock block = ^{
        ALERT(@"block");
    };
    block();
    
    
    
    IDBlock b2 = ^{
        return @"ddddddd";
    };
    NSLog(@"%@",b2());
    
    
    IntBlock_int b3 = ^(int index)
    {
        return index+10;
    };
    
    NSLog(@"%d",b3(20));
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"text" ofType:@"text"];
    NSString *string = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    ;
    
    NSLog(@"%@",string);
    NSLog(@"%@",FileString(@"text", @"text"));
    
    HexRGB(0x187eb4);
    HexRGBAlpha(0x187eb4,0.5);
    RGB(200, 130, 10);
    RGBAlpha(200, 130, 10,0.4);

    
    
}

@end

//
//  NSString+CBFMd5.m
//  Pods
//
//  Created by Daniel on 2015/1/20.
//  Copyright (c) 2015年 CBF Technology. All rights reserved.
//

#import "NSString+CBFMd5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (CBFMd5)

- (NSString *)md5 {
    const char *src = [self UTF8String];
    
    // Create byte array of unsigned chars
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    // Create 16 byte MD5 hash value, store in buffer
    CC_MD5(src, (CC_LONG)strlen(src), result);
    
    // Convert unsigned char buffer to NSString of hex values
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for( int i = 0 ; i < CC_MD5_DIGEST_LENGTH ; i++ ) {
        [output appendFormat:@"%02x",result[i]];
    }
    
    return output;
}

@end

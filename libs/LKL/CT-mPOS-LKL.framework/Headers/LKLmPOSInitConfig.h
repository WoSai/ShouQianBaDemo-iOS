//
//  LKLmPOSInitConfig.h
//  libLKLmPOSSDK
//
//  Created by centerm on 14-8-5.
//  Copyright (c) 2014年 centerm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LKLmPOSInitConfig : NSObject

@property (nonatomic, retain) NSString *appID;                  //应用注册ID
@property (nonatomic, retain) NSString *appKey;                 //应用注册KEY
@property (nonatomic, retain) NSString *appFlag;                //应用标识码
@property (nonatomic, retain) NSString *lklmPOSUserName;        //注册用户名
@property (nonatomic, retain) NSString *lklmPOSPassword;        //注册用户密码
@property (nonatomic, retain) NSString *mchntCode;              //商户号

@end

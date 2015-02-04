//
//  LKLmPOSTradeResultForm.h
//  libLKLmPOSSDK
//
//  Created by centerm on 14-8-5.
//  Copyright (c) 2014年 centerm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LKLmPOSTradeResultForm : NSObject

@property (nonatomic, retain) NSString *transResult;        //交易结果

@property (nonatomic, retain) NSString *orderNumber;        //订单号

@property (nonatomic, retain) NSString *merchantNumber;     //商户编号
@property (nonatomic, retain) NSString *terminalID;         //终端编号
@property (nonatomic, retain) NSString *acquirer;           //收单机构
@property (nonatomic, retain) NSString *CardNumber;         //交易银行卡号
@property (nonatomic, retain) NSString *issuer;             //发卡行
@property (nonatomic, retain) NSString *transType;          //交易类型
@property (nonatomic, retain) NSString *transDateTime;      //交易日期/时间
@property (nonatomic, retain) NSString *authNumber;         //授权号
@property (nonatomic, retain) NSString *batchNumber;        //批次号
@property (nonatomic, retain) NSString *syspreferno;        //检索参考号
@property (nonatomic, retain) NSString *transAmount;        //交易金额（单位：元 精确到：分）
@property (nonatomic, retain) NSString *billno;             //票据号  交易凭证号
//余额查询时返回
@property (nonatomic, retain) NSString *cardBalance;        //卡内余额（单位：元 精确到：分）

@end

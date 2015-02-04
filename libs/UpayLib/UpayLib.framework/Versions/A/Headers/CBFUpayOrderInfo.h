//
//  CBFUpayOrderInfo.h
//  Pods
//
//  Created by Daniel on 2015/1/15.
//  Copyright (c) 2015年 CBF Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CBFUpayPayMethod.h"

@interface CBFUpayOrderInfo : NSObject

/**
 * 商户的订单号
 */
@property(nonatomic, strong) NSString *orderId;

/**
 * 商户的Store ID
 */
@property(nonatomic, strong) NSString *merchantId;

/**
 * 商户的APP ID
 */
@property(nonatomic, strong) NSString *appId;

/**
 * md5(merchantId+appId+appkey)
 */
@property(nonatomic, strong) NSString *sign;

/**
 * 商户操作员ID
 */
@property(nonatomic, strong) NSString *operId;

/**
 * Upay SDK产生的订单号
 */
@property(nonatomic, strong) NSString *transactionId;

/**
 * 批次号，拉卡拉使用
 */
@property(nonatomic, strong) NSString *batchNo;

/**
 * 凭证号，拉卡拉使用
 */
@property(nonatomic, strong) NSString *voucherNo;

/**
 * 交易名称
 */
@property(nonatomic, strong) NSString *subject;

/**
 * 交易时间
 */
@property(nonatomic, strong) NSString *time;

/**
 * 交易金额
 */
@property(nonatomic, strong) NSNumber *amount;

/**
 * 货币代码，预设(156 人民币)
 */
@property(nonatomic, strong) NSString *curType;

/**
 * 交易种类，请使用CBFUpayOrderInfoExecuteType后转成NSNumber
 */
@property(nonatomic, strong) NSNumber *executeType; // (NSInteger) CBFUpayOrderInfoExecuteType

/**
 * 交易方式，请使用CBFUpayPayMethod后转成NSNumber
 */
@property(nonatomic, strong) NSNumber *payMethod; // (NSInteger) CBFUpayPayMethod

@end

typedef NS_ENUM(NSInteger, CBFUpayOrderInfoExecuteType) {
    CBFUpayOrderInfoExecuteTypeUnknown = 0,
    CBFUpayOrderInfoExecuteTypeCheckout,
    CBFUpayOrderInfoExecuteTypeRevoke,
};

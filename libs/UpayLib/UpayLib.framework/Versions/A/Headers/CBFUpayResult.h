//
//  CBFUpayResult.h
//  Pods
//
//  Created by Daniel on 2015/1/15.
//  Copyright (c) 2015年 CBF Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CBFUpayPayMethod.h"

@interface CBFUpayResult : NSObject

//订单Id
@property(nonatomic, strong) NSString *orderId;
//金额
@property(nonatomic, strong) NSNumber *amount;

@property(nonatomic, strong) NSString *account;
//时间
@property(nonatomic, strong) NSString *time;
//状态
@property(nonatomic, strong) NSNumber *state;
//订单批次号
@property(nonatomic, strong) NSString *batchNo;
//凭证号
@property(nonatomic, strong) NSString *voucherNo;
//支付方式
@property(nonatomic, strong) NSNumber *payMethod; // (NSInteger) CBFUpayPayMethod


@end

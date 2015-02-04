//
//  CBFUpayTask.h
//  Pods
//
//  Created by Daniel on 2015/1/14.
//  Copyright (c) 2015年 CBF Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CBFUpayOrderInfo;
@class CBFUpayResult;

typedef void (^CBFUpayTaskSuccessBlock)(CBFUpayResult *responseObject);
typedef void (^CBFUpayTaskFailureBlock)(NSError *error);


@interface CBFUpayTask : NSObject

/**
 *
 * 起始化
 *
 */
- (instancetype)initWithOrderInfo:(CBFUpayOrderInfo *)oredrInfo success:(CBFUpayTaskSuccessBlock)success failure:(CBFUpayTaskFailureBlock)failure;

/**
 *
 * 设定订单资讯
 *
 */
- (void)setOrderInfo:(CBFUpayOrderInfo *)orderInfo;

/**
 *
 * 设定交易完成处理
 *
 */
- (void)setSuccessBlock:(CBFUpayTaskSuccessBlock)success;

/**
 *
 * 设定交易失败处理
 *
 */
- (void)setFailureBlock:(CBFUpayTaskFailureBlock)failure;


/**
 *
 * 开始交易，跳出交易画面
 *
 */
- (void)executeInViewController:(UIViewController *)viewController;



//@property(nonatomic, strong) NSString *title;

@end

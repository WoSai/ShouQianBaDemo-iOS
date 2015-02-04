//
//  LKLmPOSSDK.h
//  CMposSDKSource
//
//  Created by centerm on 14-7-28.
//  Copyright (c) 2014年 centerm. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LKLmPOSTradeResultForm.h"

typedef NS_ENUM(NSInteger, LKLmPOSSDKErrorCode) {
    LKLmPOSSDKErrorCode_AuthFailed = 821301,                //SDK认证失败或未进行认证
    LKLmPOSSDKErrorCode_Bluetooth_ConnectionError,          //蓝牙连接出错
    LKLmPOSSDKErrorCode_NetworkingError,                    //网络错误
    LKLmPOSSDKErrorCode_Unknown_Device,                     //连接指定设备失败
    LKLmPOSSDKErrorCode_UnActivated,                        //设备未激活  5
    LKLmPOSSDKErrorCode_ActivateFailed,                     //设备激活失败
    LKLmPOSSDKErrorCode_Terminal_NeedUpdate_Sel,            //设备有可选升级
    LKLmPOSSDKErrorCode_Terminal_NeedUpdate,                //设备需要升级
    LKLmPOSSDKErrorCode_Cancel,                             //用户取消操作
    LKLmPOSSDKErrorCode_mPOSAction_Timeout,                 //刷卡或输密超时  10
    LKLmPOSSDKErrorCode_LocationService_Closed,             //未打开定位服务
    LKLmPOSSDKErrorCode_GetLoactionFailed,                  //获取当前地址信息失败
    LKLmPOSSDKErrorCode_SDK_BUSY,                           //SDK在处理其它任务
    LKLmPOSSDKErrorCode_SDK_REVERSE,                        //SDK正在等待冲正
    LKLmPOSSDKErrorCode_Unknown,                            //未知错误
    LKLmPOSSDKErrorCode_TransAmount,                        //金额错误
    LKLmPOSSDKErrorCode_SearchTimeOut,                      //蓝牙搜索超时
    LKLmPOSSDKErrorCode_ParameterError,                     //参数错误
    LKLmPOSSDKErrorCode_Sign_Or_Print,                      //当前状态无法签名或者打印
    LKLmPOSSDKErrorCode_Login_Timeout,                      //用户未登陆或者超时
    LKLmPOSSDKErrorCode_SDK_Version_law,                    //当前SDK版本过低
    LKLmPOSSDKErrorCode_Device_notNeedUpdate,               //当前设备不需要升级
    LKLmPOSSDKErrorCode_IC_FAILED,                          //IC卡处理失败
    LKLmPOSSDKErrorCode_Admin_PW_Error,                     //主管密码验证失败
};

typedef NS_ENUM(NSInteger, LKLmPOSSDKStatusCode) {
    LKLmPOSSDK_STATE_IDLE,                                  //初始状态
    LKLmPOSSDK_STATE_AUTH_PASSED,                           //认证通过
    LKLmPOSSDK_STATE_Bluetooth_PowerOFF,                    //手机蓝牙未开启,或手机不支持蓝牙4.0
    LKLmPOSSDK_STATE_Bluetooth_PowerON,                     //手机蓝牙已开启
    LKLmPOSSDK_STATE_DEVICE_CONNECTING,                     //连接终端中
    LKLmPOSSDK_STATE_DEVICE_CHECK,                          //终端状态检测中，
    LKLmPOSSDK_STATE_ACTIVATING,                            //设备激活中
    LKLmPOSSDK_STATE_ACTIVATESUCCESS,                       //设备激活成功
     LKLmPOSSDK_STATE_REVOKEACTIVATESUCCESS,                //设备反激活成功
    LKLmPOSSDK_STATE_UPDATING,                              //设备升级中
    LKLmPOSSDK_STATE_SEND_COMPLETED,                        //设备固件传输结束
    LKLmPOSSDK_STATE_Validated_Admin_PW,                    //主管密码验证通过，
    LKLmPOSSDK_STATE_WAITING_SWIPECARD,                     //等待刷卡
    LKLmPOSSDK_STATE_WAITING_PIN_INPUT,                     //等待输密
    LKLmPOSSDK_STATE_WAITING_TRADE_RESULT,                  //等待交易结果
    LKLmPOSSDK_STATE_DO_SECOND_PBOC,                        //IC卡PBOC
    LKLmPOSSDK_STATE_NEED_PRINT_OR_SIGN,                    //需要进行签名或打印凭条
    LKLmPOSSDK_STATE_COMPLETED_SIGN_NEED_PRINT,             //完成签名上送等待打印
    LKLmPOSSDK_STATE_REVOKING,                              //正在进行冲正
    LKLmPOSSDK_STATE_REVOKED,                               //交易冲正成功
    LKLmPOSSDK_STATE_FINISHED,                              //交易结束
};


@class LKLmPOSInitConfig;
@protocol LKLmPOSSDKDelegate;


@interface LKLmPOSSDK : NSObject

/**
 *  初始化mPOS SDK 并设置回调代理
 *
 *  @param config   初始化配置类对象
 *  @param delegate 实现了代理的对象
 */
+ (void)initmPOSSDKConfig:(LKLmPOSInitConfig *)config delegate:(id<LKLmPOSSDKDelegate>)delegate;

/**
 *  设置/更改 LKLmPOSSDKDelegate代理对象
 *
 *  @param delegate 实现了代理的对象
 */
+ (void)setLKLmPOSSDKDelegate:(id<LKLmPOSSDKDelegate>)delegate;

/**
 *  搜索蓝牙设备(蓝牙mPOS或蓝牙打印机)
 *
 *  @param timeout 搜索蓝牙设备超时时间
 */
+ (void)searchBTDevice:(int)timeout;
/**
 *  停止搜索外部蓝牙设备(蓝牙mPOS或蓝牙打印机)
 *
 */
+ (void)stopSearchDevices;

/**
 *  设备激活接口，三个参数至少填一个
 *
 *  @param mchntName    商户名称
 *  @param branchName   网点名称
 *  @param phoneNumber  网点联系人手机号
 */
+ (void)activateDevice:(NSString *)mchntName orBranchName:(NSString *)branchName orPhoneNumber:(NSString *)phoneNumber;

/**
 *  设备激活确认接口
 */
+ (void)activateDeviceConfirm;

/**
 *  设备反激活接口
 *
 *  @param mchntName   商户名称
 *  @param branchName  网点名称
 *  @param phoneNumber 网点联系人手机号
 */
+ (void)revokeActivation:(NSString *)mchntName orBranchName:(NSString *)branchName orPhoneNumber:(NSString *)phoneNumber;

/**
 *  终端升级接口
 */
+ (void)updateTerminal;

/**
 *  消费交易接口
 *
 *  @param transAmount  交易金额（单位：分）
 *  @param orderNumber  订单号
 *  @param currencyCode 交易币种（默认为人民币：@"156"）
 *  @param deviceName   进行交易的设备名称
 */
+ (void)purchase:(long long)transAmount orderNumber:(NSString *)orderNumber currencyCode:(NSString *)currencyCode useDevice:(NSString *)deviceName;

/**
 *  余额查询
 *
 *  @param deviceName 进行交易的设备名称
 */
+ (void)balanceInquiryUseDevice:(NSString *)deviceName orderNumber:(NSString *)orderNumber;

/**
 *  消费撤销接口
 *
 *  @param voucherNumber            原交易凭证号
 *  @param orderNumber              订单号
 *  @param barchNumber              原批次号
 *  @param transAmount              原交易金额（单位：分）
 *  @param lklmPOSUserPassword      管理员密码
 *  @param deviceName               进行交易的设备名称
 */
+ (void)purchaseCancellation:(NSString *)voucherNumber orderNumber:(NSString *)orderNumber barchNo:(NSString *)barchNumber amount:(long)transAmount withPassword:(NSString *)lklmPOSUserPassword useDevice:(NSString *)deviceName;

/**
 *  预授权
 *
 *  @param transAmount  交易金额（单位：分）
 *  @param orderNumber  订单号
 *  @param currencyCode 交易币种（默认为人民币：@"156"）
 *  @param deviceName   进行交易的设备名称
 */
+ (void)preAuthDebit:(long long)transAmount orderNumber:(NSString *)orderNumber currencyCode:(NSString *)currencyCode useDevice:(NSString *)deviceName;

/**
 *  预授权完成
 *
 *  @param transAmount 交易金额（单位：分）
 *  @param orderNumber 订单号
 *  @param strAuthNo   授权号
 *  @param deviceName  进行交易的设备名称
 */
+ (void)complatedPAD:(long)transAmount orderNumber:(NSString *)orderNumber authNumber:(NSString *)strAuthNo useDevice:(NSString *)deviceName;

/**
 *  预授权撤销
 *
 *  @param authNo              授权号
 *  @param orderNumber         订单号
 *  @param transAmount         原交易金额（单位：分）
 *  @param lklmPOSUserPassword 管理员密码
 *  @param deviceName          进行交易的设备名称
 */
+ (void)preAuthCancellation:(NSString *)authNo orderNumber:(NSString *)orderNumber amount:(long)transAmount withPassword:(NSString *)lklmPOSUserPassword useDevice:(NSString *)deviceName;

/**
 *  预授权完成撤销
 *
 *  @param voucherNumber       原交易凭证号
 *  @param orderNumber         订单号
 *  @param lklmPOSUserPassword 管理员密码
 *  @param deviceName          进行交易的设备名称
 */
+ (void)preAuthFinishedCancellaction:(NSString *)voucherNumber orderNumber:(NSString *)orderNumber withPassword:(NSString *)lklmPOSUserPassword useDevice:(NSString *)deviceName;

/**
 *  凭条打印
 *  @param deviceName               进行交易的设备名称
 */
+ (void)printReceiptUseDevice:(NSString *)deviceName;

/**
 *  电子签名
 *
 *  @param isNeedToPrint 上传完电子签名是否还需要进行打印
 *  @param type type == 1 显示手机版签名界面；tpye == 2 显示PAD版签名界面。
 */
+ (void)eSignature:(int)type needToPrint:(BOOL)isNeedToPrint;

/**
 *  释放SDK资源
 */
+ (void)clean;
/***********************************************************************************/
#pragma mark  - SDK不对外提供的接口
/*  SDK不对外提供的接口  */
/*注册
 *@param appkey            应用注册ID
 *@param appid             应用注册key
 *@param loginName         注册账号
 *@param password          注册密码
 *@param mobilenum         手机号码
 *@param idcardinum        身份证哈皮吗
 *@param email             邮箱
 *@param address           地址 
 */
+ (void)registWithAppkey:(NSString *)appkey
                   appid:(NSString *)appid
               loginName:(NSString *)loginName
                password:(NSString *)password
               mobilenum:(NSString *)mobilenum
              idcardinum:(NSString *)idcardinum
                   email:(NSString *)email
                 address:(NSString *)address;
/**
 *  交易查询
 *
 *@param   page          当前加载的页数
 *@param   deviceName    设备名称
 *
 */
+ (void)transactionQueryWithDeviceName:(NSString *)deviceName page:(NSString *)page type:(int)queryType;
/**
 *  查询设备是否激活
 *
 *@param   deviceName    设备名称
 *
 */

+ (void)queryWhetherTheDeviceIsActivatedWithDeviceName:(NSString *)deviceName;
/**
 *  修改密码
 *
 *  @param oldPassword   原密码
 *  @param aNewPassword  新密码
 *
 */
+ (void)changePasswordWithOldPassword:(NSString *)oldPassword andNewPassword:(NSString *)aNewPassword;
/**
 *
 *  退出登录
 *
 */
+ (void)exitLogin;
/**
 *
 * 打印
 *@param   deviceName    设备名称
 *@param   soureDic      需要打印的信息
 *
 */
+ (void)printReceiptUseDevice:(NSString *)deviceName andSoure:(NSDictionary *)soureDic;
/**
 *
 * 停止手机蓝牙与终端的交互
 *
 */
+ (void)stopBluetoothInteraction;

+ (BOOL)reverse;

+ (void)updateCA;

+ (void)updateAID;

+ (LKLmPOSSDKStatusCode)getCurrentState;

+ (void)checkManagerPW:(NSString *)managerPW useDevice:(NSString *)deviceName;


+ (NSDictionary *)getCurrentUserInfo;

@end


@protocol LKLmPOSSDKDelegate <NSObject>

@optional

/**
 *  SDK交易状态改变时触发的回调接口
 *
 *  @param currentStatusCode 当前SDK交易状态码
 */
- (void)onLKLmPOSSDKStatusChanged:(LKLmPOSSDKStatusCode)currentStatusCode;

/**
 *  搜索到蓝牙设备时触发
 *
 *  @param deviceName 设备名称
 */
- (void)didDiscoverBTDevice:(NSString *)deviceName;

/**
 *  SDK发生错误时触发
 *
 *  @param error 包含错误码error.code;错误信息error.domain
 */
- (void)onError:(NSError *)error;

/**
 *  获取设备激活确认信息时触发
 *
 *  @param dicConfirmInfo 包含了设备激活确认信息：商户名称，网点名称，网点地址，设备名称
 */
- (void)onGetActivateDeviceConfirmInfo:(NSDictionary *)dicConfirmInfo;

/**
 *  交易完成时返回交易结果
 *
 *  @param tradeResult 交易结果对象
 */
- (void)onGetTradeResult:(LKLmPOSTradeResultForm *)tradeResult;

/**
 *  登录完成时返回登录结果
 *
 *  @param loginResult 登录结果对象
 */
- (void)onGetLoginResult:(NSDictionary *)loginResult;
/**
 *  签名上送返回的图片
 *
 *  @param signatImage 登录结果对象
 */
- (void)onSignatResult:(UIImage *)signatImage;



@end
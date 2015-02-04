# UpayLib
一个B端收款SDK

## 开发环境

* Xcode 6.1.1
* iOS 7以上的设备
* 使用ARC

## 已使用的开源码

* RestKit (0.24.0)
* NSObject-ObjectMap (2.3.1)
* UIAlertView-Blocks (1.0)
* MBProgressHUD (0.9)

## 已使用的闭源码

* CT-mPOS-LKL (1.1.3)

## 测试帐号

请在 `CBFViewController.m` 里进行帐号设定，设定方式如下：
```
    #define MERCHANT_ID @"<your merchant id>"
    #define APPID @"<your app id>"
    #define APPKEY @"<your app key>"
```

## 第三方调用方法

    CBFUpayTask *task = [[CBFUpayTask alloc] init];
    CBFUpayOrderInfo *orderInfo = [[CBFUpayOrderInfo alloc] init];
    /* 
     * 设置orderInfo参数
     */
    [task setOrderInfo:orderInfo];
    [task setSuccessBlock:^(CBFUpayResult *responseObject) {
        // 交易成功处理
    }];
    [task setFailureBlock:^(NSError *error) {
        // 交易失败处理
    }];
    // 开启收银台
    [task executeInViewController:<view controller>];


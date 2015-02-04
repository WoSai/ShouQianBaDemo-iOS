//
//  CBFUpayPayMethod.h
//  Pods
//
//  Created by Daniel on 2015/1/15.
//  Copyright (c) 2015年 CBF Technology. All rights reserved.
//

#ifndef upay_CBFUpayPayMethod_h
#define upay_CBFUpayPayMethod_h

const static NSInteger CBFUpayPayMethodCount = 3;

typedef NS_ENUM(NSInteger, CBFUpayPayMethod) {
    CBFUpayPayMethodUpayAlipay = 1 << 0,
    CBFUpayPayMethodUpayLakala = 1 << 1,
    CBFUpayPayMethodUpayWeixin = 1 << 2,
};

#endif

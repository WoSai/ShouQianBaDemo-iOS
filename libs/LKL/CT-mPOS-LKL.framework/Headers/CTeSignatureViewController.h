//
//  CTeSignatureViewController.h
//  libLKLmPOSSDK
//
//  Created by centerm on 14-8-9.
//  Copyright (c) 2014年 centerm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LKLmPOSSDK.h"

@interface CTeSignatureViewController : UIViewController

@property (nonatomic, assign)   LKLmPOSSDK *delegate;

@property (retain, nonatomic)   UIImage * image;

@property (assign, nonatomic)    int pageType;

@property (retain, nonatomic) IBOutlet UILabel *signValueLabel;

@end

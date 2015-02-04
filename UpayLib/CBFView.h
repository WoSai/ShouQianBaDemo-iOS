//
//  CBFView.h
//  UpayLib
//
//  Created by Daniel on 2015/1/17.
//  Copyright (c) 2015年 Daniel Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBFView : UIView

@property(nonatomic, strong) UIScrollView *scrollView;

@property(nonatomic, strong) UITextField *orderIdTextField;
@property(nonatomic, strong) UITextField *operIdTextField;
@property(nonatomic, strong) UITextField *transactionIdTextField;
@property(nonatomic, strong) UITextField *batchNoTextField;
@property(nonatomic, strong) UITextField *voucherNoTextField;
@property(nonatomic, strong) UITextField *subjectTextField;
@property(nonatomic, strong) UITextField *timeTextField;
@property(nonatomic, strong) UITextField *amountTextField;
@property(nonatomic, strong) UITextField *curTypeTextField;
@property(nonatomic, strong) UISegmentedControl *payMethodSegmentedControl;

@property(nonatomic, strong) UIButton *startUpayButton;

@property(nonatomic, strong) UIButton *revokeButton;

@end

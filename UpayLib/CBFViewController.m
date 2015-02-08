//
//  CBFViewController.m
//  UpayLib
//
//  Created by Daniel Lee on 01/16/2015.
//  Copyright (c) 2014 Daniel Lee. All rights reserved.
//

#import "CBFViewController.h"
#import <UpayLib/CBFUpay.h>
#import "NSString+CBFMd5.h"
#import <DAKeyboardControl/DAKeyboardControl.h>

#define MERCHANT_ID @"100512354119"
#define APPID @"150039203"
#define APPKEY @"rtsle45o2rlk3osdmecmndslwpqrlkjw"

@interface CBFViewController ()

@property(nonatomic, strong) CBFUpayOrderInfo *orderInfo;

@end

@implementation CBFViewController

- (void)loadView {
    [super loadView];
    
    self.view = [[CBFView alloc] initWithFrame:self.view.frame];
    
    [self.view.startUpayButton addTarget:self action:@selector(upayTest:) forControlEvents:UIControlEventTouchUpInside];
    [self.view.revokeButton addTarget:self action:@selector(revokeAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    __weak CBFViewController *weakSelf = self;
    
    [self.view addKeyboardPanningWithFrameBasedActionHandler:^(CGRect keyboardFrameInView, BOOL opening, BOOL closing) {
        
        [weakSelf.view.constraints enumerateObjectsUsingBlock:^(NSLayoutConstraint *obj, NSUInteger idx, BOOL *stop) {
            if (obj.firstAttribute == NSLayoutAttributeHeight && obj.firstItem == weakSelf.view.scrollView) {
                obj.constant = keyboardFrameInView.origin.y - weakSelf.view.bounds.size.height;
            }
        }];
    } constraintBasedActionHandler:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action

- (void)upayTest:(id)sender {
    self.orderInfo.payMethod = @(1);
    self.orderInfo.executeType = @(CBFUpayOrderInfoExecuteTypeCheckout);
    CBFUpayTask *task = [[CBFUpayTask alloc] initWithOrderInfo:self.orderInfo success:^(CBFUpayResult *responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSError *error) {
        NSLog(@"%@", error);
    }];
    [task executeInViewController:self];
}

- (void)revokeAction:(id)sender {
    CBFUpayTask *task = [[CBFUpayTask alloc] init];
    self.orderInfo.executeType = @(CBFUpayOrderInfoExecuteTypeRevoke);
    self.orderInfo.payMethod = @(1 << self.view.payMethodSegmentedControl.selectedSegmentIndex);
    [task setOrderInfo:self.orderInfo];
    [task executeInViewController:self];
}

#pragma mark - override

- (CBFUpayOrderInfo *)orderInfo {
    if (!_orderInfo) {
        _orderInfo = [[CBFUpayOrderInfo alloc] init];
        _orderInfo.merchantId = MERCHANT_ID;
        _orderInfo.appId = APPID;
        _orderInfo.sign = [[NSString stringWithFormat:@"%@%@%@", MERCHANT_ID, APPID, APPKEY] md5];
    }
    _orderInfo.orderId = self.view.orderIdTextField.text;
    _orderInfo.operId = self.view.operIdTextField.text;
    _orderInfo.transactionId = nil;
    _orderInfo.batchNo = self.view.batchNoTextField.text;
    _orderInfo.voucherNo = self.view.voucherNoTextField.text;
    _orderInfo.subject = self.view.subjectTextField.text;
    _orderInfo.time = self.view.timeTextField.text;
    _orderInfo.amount = @(self.view.amountTextField.text.floatValue);
    _orderInfo.curType = self.view.curTypeTextField.text;
    return _orderInfo;
}

@end

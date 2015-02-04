//
//  CBFView.m
//  UpayLib
//
//  Created by Daniel on 2015/1/17.
//  Copyright (c) 2015年 Daniel Lee. All rights reserved.
//

#import "CBFView.h"

@interface CBFView ()

@property(nonatomic, strong) UILabel *orderIdTitleLabel;
@property(nonatomic, strong) UILabel *operIdTitleLabel;
@property(nonatomic, strong) UILabel *transactionIdTitleLabel;
@property(nonatomic, strong) UILabel *batchNoTitleLabel;
@property(nonatomic, strong) UILabel *voucherNoTitleLabel;
@property(nonatomic, strong) UILabel *subjectTitleLabel;
@property(nonatomic, strong) UILabel *timeTitleLabel;
@property(nonatomic, strong) UILabel *amountTitleLabel;
@property(nonatomic, strong) UILabel *curTypeTitleLabel;

@end

@implementation CBFView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self settingLayout];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self settingLayout];
    }
    return self;
}

- (void)settingLayout {
    self.backgroundColor = [UIColor grayColor];
    
    {
        [self addSubview:self.scrollView];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:1 constant:0]];
    }
    
    {
        {
            [self.scrollView addSubview:self.orderIdTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.orderIdTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeTop multiplier:1 constant:80]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.orderIdTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeCenterX multiplier:0.25 constant:0]];
            [self.orderIdTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.orderIdTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.operIdTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.operIdTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.orderIdTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.operIdTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.orderIdTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.operIdTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.operIdTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.transactionIdTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.operIdTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.operIdTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.transactionIdTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.batchNoTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.batchNoTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.batchNoTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.batchNoTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.batchNoTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.voucherNoTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.batchNoTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.batchNoTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.voucherNoTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.subjectTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.subjectTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.subjectTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.subjectTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.subjectTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.timeTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.timeTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.subjectTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.timeTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.subjectTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.timeTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.timeTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.amountTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.amountTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.timeTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.amountTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.timeTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.amountTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.amountTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
        {
            [self.scrollView addSubview:self.curTypeTitleLabel];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.curTypeTitleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.amountTitleLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.curTypeTitleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.amountTitleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
            [self.curTypeTitleLabel addConstraint:[NSLayoutConstraint constraintWithItem:self.curTypeTitleLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:120]];
        }
        
    } // title

    {
        {
            [self.scrollView addSubview:self.orderIdTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.orderIdTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.orderIdTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.orderIdTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.orderIdTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.orderIdTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
            
        }
        
        {
            [self.scrollView addSubview:self.operIdTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.operIdTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.operIdTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.operIdTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.operIdTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.operIdTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.transactionIdTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.transactionIdTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.transactionIdTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.transactionIdTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.transactionIdTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.batchNoTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.batchNoTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.batchNoTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.batchNoTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.batchNoTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.batchNoTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.voucherNoTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.voucherNoTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.voucherNoTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.voucherNoTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.voucherNoTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.subjectTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.subjectTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.subjectTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.subjectTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.subjectTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.subjectTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.timeTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.timeTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.timeTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.timeTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.timeTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.timeTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.amountTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.amountTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.amountTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.amountTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.amountTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.amountTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.curTypeTextField];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.curTypeTextField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.curTypeTitleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.curTypeTextField attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.curTypeTitleLabel attribute:NSLayoutAttributeRight multiplier:1 constant:10]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.curTypeTextField attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
        }
        
        {
            [self.scrollView addSubview:self.payMethodSegmentedControl];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.payMethodSegmentedControl attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20]];
            [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.payMethodSegmentedControl attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.curTypeTextField attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
            [self.payMethodSegmentedControl addConstraint:[NSLayoutConstraint constraintWithItem:self.payMethodSegmentedControl attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:280]];
        }
    }
    
    {
        [self.scrollView addSubview:self.startUpayButton];
        [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.startUpayButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeCenterX multiplier:0.6 constant:0]];
        [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.startUpayButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.payMethodSegmentedControl attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
    }
    
    {
        [self.scrollView addSubview:self.revokeButton];
        [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.revokeButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeCenterX multiplier:1.4 constant:0]];
        [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.revokeButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.payMethodSegmentedControl attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
    }
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.revokeButton attribute:NSLayoutAttributeBottom multiplier:1 constant:20]];
}

#pragma mark - override

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.translatesAutoresizingMaskIntoConstraints = NO;
        _scrollView.backgroundColor = [UIColor clearColor];
    }
    return _scrollView;
}

- (UIButton *)startUpayButton {
    if (!_startUpayButton) {
        _startUpayButton = [[UIButton alloc] init];
        _startUpayButton.translatesAutoresizingMaskIntoConstraints = NO;
        _startUpayButton.backgroundColor = [UIColor clearColor];
        [_startUpayButton setTitle:NSLocalizedString(@"enter checkout", nil) forState:UIControlStateNormal];
        [_startUpayButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _startUpayButton.showsTouchWhenHighlighted = YES;
    }
    return _startUpayButton;
}

- (UIButton *)revokeButton {
    if (!_revokeButton) {
        _revokeButton = [[UIButton alloc] init];
        _revokeButton.translatesAutoresizingMaskIntoConstraints = NO;
        _revokeButton.backgroundColor = [UIColor clearColor];
        [_revokeButton setTitle:NSLocalizedString(@"revoke", nil) forState:UIControlStateNormal];
        [_revokeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _startUpayButton.showsTouchWhenHighlighted = YES;
    }
    return _revokeButton;
}

- (UILabel *)orderIdTitleLabel {
    if (!_orderIdTitleLabel) {
        _orderIdTitleLabel = [[UILabel alloc] init];
        _orderIdTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _orderIdTitleLabel.text = NSLocalizedString(@"orderId", nil);
    }
    return _orderIdTitleLabel;
}

- (UILabel *)operIdTitleLabel {
    if (!_operIdTitleLabel) {
        _operIdTitleLabel = [[UILabel alloc] init];
        _operIdTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _operIdTitleLabel.text = NSLocalizedString(@"operId", nil);
    }
    return _operIdTitleLabel;
}

- (UILabel *)transactionIdTitleLabel {
    if (!_transactionIdTitleLabel) {
        _transactionIdTitleLabel = [[UILabel alloc] init];
        _transactionIdTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _transactionIdTitleLabel.text = NSLocalizedString(@"transactionId", nil);
    }
    return _transactionIdTitleLabel;
}

- (UILabel *)batchNoTitleLabel {
    if (!_batchNoTitleLabel) {
        _batchNoTitleLabel = [[UILabel alloc] init];
        _batchNoTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _batchNoTitleLabel.text = NSLocalizedString(@"batchNo", nil);
    }
    return _batchNoTitleLabel;
}

- (UILabel *)voucherNoTitleLabel {
    if (!_voucherNoTitleLabel) {
        _voucherNoTitleLabel = [[UILabel alloc] init];
        _voucherNoTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _voucherNoTitleLabel.text = NSLocalizedString(@"voucherNo", nil);
    }
    return _voucherNoTitleLabel;
}

- (UILabel *)subjectTitleLabel {
    if (!_subjectTitleLabel) {
        _subjectTitleLabel = [[UILabel alloc] init];
        _subjectTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _subjectTitleLabel.text = NSLocalizedString(@"subject", nil);
    }
    return _subjectTitleLabel;
}

- (UILabel *)timeTitleLabel {
    if (!_timeTitleLabel) {
        _timeTitleLabel = [[UILabel alloc] init];
        _timeTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _timeTitleLabel.text = NSLocalizedString(@"time", nil);
    }
    return _timeTitleLabel;
}

- (UILabel *)amountTitleLabel {
    if (!_amountTitleLabel) {
        _amountTitleLabel = [[UILabel alloc] init];
        _amountTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _amountTitleLabel.text = NSLocalizedString(@"amount", nil);
    }
    return _amountTitleLabel;
}

- (UILabel *)curTypeTitleLabel {
    if (!_curTypeTitleLabel) {
        _curTypeTitleLabel = [[UILabel alloc] init];
        _curTypeTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _curTypeTitleLabel.text = NSLocalizedString(@"curType", nil);
    }
    return _curTypeTitleLabel;
}

- (UITextField *)orderIdTextField {
    if (!_orderIdTextField) {
        _orderIdTextField = [[UITextField alloc] init];
        _orderIdTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _orderIdTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _orderIdTextField;
}

- (UITextField *)operIdTextField {
    if (!_operIdTextField) {
        _operIdTextField = [[UITextField alloc] init];
        _operIdTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _operIdTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _operIdTextField;
}

- (UITextField *)transactionIdTextField {
    if (!_transactionIdTextField) {
        _transactionIdTextField = [[UITextField alloc] init];
        _transactionIdTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _transactionIdTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _transactionIdTextField;
}

- (UITextField *)batchNoTextField {
    if (!_batchNoTextField) {
        _batchNoTextField = [[UITextField alloc] init];
        _batchNoTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _batchNoTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _batchNoTextField;
}

- (UITextField *)voucherNoTextField {
    if (!_voucherNoTextField) {
        _voucherNoTextField = [[UITextField alloc] init];
        _voucherNoTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _voucherNoTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _voucherNoTextField;
}

- (UITextField *)subjectTextField {
    if (!_subjectTextField) {
        _subjectTextField = [[UITextField alloc] init];
        _subjectTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _subjectTextField.borderStyle = UITextBorderStyleRoundedRect;
        _subjectTextField.text = @"test";
    }
    return _subjectTextField;
}

- (UITextField *)timeTextField {
    if (!_timeTextField) {
        _timeTextField = [[UITextField alloc] init];
        _timeTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _timeTextField.borderStyle = UITextBorderStyleRoundedRect;
        _timeTextField.placeholder = @"yyyy/MM/dd HH:mm";
    }
    return _timeTextField;
}

- (UITextField *)amountTextField {
    if (!_amountTextField) {
        _amountTextField = [[UITextField alloc] init];
        _amountTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _amountTextField.borderStyle = UITextBorderStyleRoundedRect;
        _amountTextField.keyboardType = UIKeyboardTypeDecimalPad;
        _amountTextField.text = @"10";
    }
    return _amountTextField;
}

- (UITextField *)curTypeTextField {
    if (!_curTypeTextField) {
        _curTypeTextField = [[UITextField alloc] init];
        _curTypeTextField.translatesAutoresizingMaskIntoConstraints = NO;
        _curTypeTextField.borderStyle = UITextBorderStyleRoundedRect;
        _curTypeTextField.text = @"156";
    }
    return _curTypeTextField;
}

- (UISegmentedControl *)payMethodSegmentedControl {
    if (!_payMethodSegmentedControl) {
        _payMethodSegmentedControl = [[UISegmentedControl alloc] initWithItems:@[NSLocalizedString(@"alipay", nil), NSLocalizedString(@"lakala", nil), NSLocalizedString(@"weixin", nil)]];
        _payMethodSegmentedControl.translatesAutoresizingMaskIntoConstraints = NO;
        [_payMethodSegmentedControl setTintColor:[UIColor whiteColor]];
        _payMethodSegmentedControl.selectedSegmentIndex = 0;
    }
    return _payMethodSegmentedControl;
}

@end

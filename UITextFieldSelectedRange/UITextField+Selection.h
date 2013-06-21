//
//  UITextField+Selection.h
//  UITextFieldSelectedRange
//
//  Created by Justin on 13-6-22.
//  Copyright (c) 2013年 apple.inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Selection)

- (NSRange)selectedRange;
- (void)setSelectedRange:(NSRange)range;

@end

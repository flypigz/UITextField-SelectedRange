//
//  UITextField+Selection.m
//  UITextFieldSelectedRange
//
//  Created by Justin on 13-6-22.
//  Copyright (c) 2013年 apple.inc. All rights reserved.
//

#import "UITextField+Selection.h"

@implementation UITextField (Selection)

- (NSRange)selectedRange
{
	UITextPosition* beginning = self.beginningOfDocument;
    
	UITextRange* selectedRange = self.selectedTextRange;
	UITextPosition* selectionStart = selectedRange.start;
	UITextPosition* selectionEnd = selectedRange.end;
    
    NSInteger location = [self offsetFromPosition:beginning toPosition:selectionStart];
    NSInteger length = [self offsetFromPosition:selectionStart toPosition:selectionEnd];
    
	return NSMakeRange(location, length);
}

- (void)setSelectedRange:(NSRange)range
{
	UITextPosition* beginning = self.beginningOfDocument;
    
	UITextPosition* startPosition = [self positionFromPosition:beginning offset:range.location];
	UITextPosition* endPosition = [self positionFromPosition:beginning offset:range.location + range.length];
	UITextRange* selectionRange = [self textRangeFromPosition:startPosition toPosition:endPosition];
    
	[self setSelectedTextRange:selectionRange];
}

@end

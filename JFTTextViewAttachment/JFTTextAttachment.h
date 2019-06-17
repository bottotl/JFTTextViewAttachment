//
//  JFTTextAttachment.h
//  JFTTextViewAttachment
//
//  Created by 於林涛 on 2019/6/14.
//  Copyright © 2019 jft0m. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSString * const JFTAttributedStringObjectReplacementCharacter;

@interface JFTTextAttachment : NSTextAttachment
@property (nonatomic, strong, nullable) UIView *view;
@property (nonatomic, copy, nullable) void (^layoutViewInTextView)(JFTTextAttachment *attachment, CGPoint origin);
@end

NS_ASSUME_NONNULL_END

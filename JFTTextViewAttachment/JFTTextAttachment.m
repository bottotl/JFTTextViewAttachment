//
//  JFTTextAttachment.m
//  JFTTextViewAttachment
//
//  Created by 於林涛 on 2019/6/14.
//  Copyright © 2019 jft0m. All rights reserved.
//

#import "JFTTextAttachment.h"
NSString * const JFTAttributedStringObjectReplacementCharacter = @"\uFFFC";

@implementation JFTTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(nullable NSTextContainer *)textContainer proposedLineFragment:(CGRect)lineFrag glyphPosition:(CGPoint)position characterIndex:(NSUInteger)charIndex {
    CGRect rect = [super attachmentBoundsForTextContainer:textContainer proposedLineFragment:lineFrag glyphPosition:position characterIndex:charIndex];
    if (self.layoutViewInTextView) {
        self.layoutViewInTextView(self, position);
    }
    return rect;
}
@end

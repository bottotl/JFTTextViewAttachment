//
//  JFTTextLayoutManager.m
//  JFTTextViewAttachment
//
//  Created by 於林涛 on 2019/6/17.
//  Copyright © 2019 jft0m. All rights reserved.
//

#import "JFTTextLayoutManager.h"
#import "JFTTextAttachment.h"

@implementation JFTTextLayoutManager

- (void)drawGlyphsForGlyphRange:(NSRange)glyphsToShow atPoint:(CGPoint)origin {
    [super drawGlyphsForGlyphRange:glyphsToShow atPoint:origin];
}

- (void)showCGGlyphs:(const CGGlyph *)glyphs positions:(const CGPoint *)positions count:(NSUInteger)glyphCount font:(UIFont *)font matrix:(CGAffineTransform)textMatrix attributes:(NSDictionary<NSAttributedStringKey, id> *)attributes inContext:(CGContextRef)graphicsContext {
    [super showCGGlyphs:glyphs positions:positions count:glyphCount font:font matrix:textMatrix attributes:attributes inContext:graphicsContext];
    //check containCustomAttachment
    NSUInteger index = [self glyphIndexForPoint:positions[0] inTextContainer:self.textContainers.firstObject];
    NSRange glyphRange = NSMakeRange(index, glyphCount);
    NSRange characterRange = [self characterRangeForGlyphRange:glyphRange actualGlyphRange:nil];
    [self.textStorage enumerateAttribute:NSAttachmentAttributeName inRange:characterRange options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired usingBlock:^(id  _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        if ([value isKindOfClass:JFTTextAttachment.class]) {
            JFTTextAttachment *attachment = value;
            attachment.view.frame = CGRectOffset(attachment.bounds, (*positions).x, (*positions).y);
        }
    }];
}


@end

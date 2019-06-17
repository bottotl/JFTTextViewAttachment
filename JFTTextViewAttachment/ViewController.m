//
//  ViewController.m
//  JFTTextViewAttachment
//
//  Created by 於林涛 on 2019/6/14.
//  Copyright © 2019 jft0m. All rights reserved.
//

#import "ViewController.h"
#import "JFTTextAttachment.h"
#import "JFTTextLayoutManager.h"


@interface ViewController () <NSLayoutManagerDelegate>
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) JFTTextLayoutManager *layoutManager;
@property (nonatomic, strong) NSTextContainer *textContainer;
@property (nonatomic, strong) NSTextStorage *storage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    _storage = [NSTextStorage new];
    
    _layoutManager = ({
        JFTTextLayoutManager *layoutManager = [JFTTextLayoutManager new];
        layoutManager.delegate = self;
        [self.storage addLayoutManager:layoutManager];
        layoutManager;
    });
    
    _textContainer = ({
        NSTextContainer *container = [NSTextContainer new];
        [_layoutManager addTextContainer:container];
        container;
    });
    
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 100, 200, 200) textContainer:_textContainer];
    _textView.attributedText = [self attr];
    
    [self.view addSubview:_textView];
}

- (NSAttributedString *)attr {
    NSMutableAttributedString *textAttrStr = [[NSMutableAttributedString alloc] initWithString:@"😊😊😊😊😊😊"];

    [textAttrStr appendAttributedString:({
        CGRect btnRect = CGRectMake(0, 0 , 100, 20);
        JFTTextAttachment *attach = [[JFTTextAttachment alloc] init];
        attach.image = [UIImage imageNamed:@"02_top"];
        attach.bounds = btnRect;

        attach.layoutViewInTextView = ^(JFTTextAttachment * _Nonnull attachment, CGPoint origin) {
            attachment.view.frame = CGRectOffset(attachment.bounds, origin.x, origin.y);
        };
        attach.view = ({
            UIButton *btn = [[UIButton alloc] init];
            [btn setTitle:@"👿👿👿👿" forState:UIControlStateNormal];
            btn.backgroundColor = [UIColor redColor];
            [self.textView addSubview:btn];
            btn;
        });

        NSAttributedString *imgStr = [[NSAttributedString alloc] initWithString:JFTAttributedStringObjectReplacementCharacter attributes:@{ NSAttachmentAttributeName : attach }];
        imgStr;
    })];
    [textAttrStr appendAttributedString:[[NSAttributedString alloc] initWithString:@"😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊"]];
    [textAttrStr appendAttributedString:({
        CGRect btnRect = CGRectMake(0, 0 , 30, 20);
        JFTTextAttachment *attach = [[JFTTextAttachment alloc] init];
        attach.image = [UIImage new];
        attach.bounds = btnRect;
        
        attach.layoutViewInTextView = ^(JFTTextAttachment * _Nonnull attachment, CGPoint origin) {
            attachment.view.frame = CGRectOffset(attachment.bounds, origin.x, origin.y);
        };
        attach.view = ({
            UIButton *btn = [[UIButton alloc] init];
            [btn setTitle:@"😊😊😊😊😊" forState:UIControlStateNormal];
            btn.backgroundColor = [UIColor redColor];
            [self.textView addSubview:btn];
            btn;
        });
        
        NSAttributedString *imgStr = [[NSAttributedString alloc] initWithString:JFTAttributedStringObjectReplacementCharacter attributes:@{ NSAttachmentAttributeName : attach }];
        imgStr;
    })];
    [textAttrStr appendAttributedString:[[NSAttributedString alloc] initWithString:@"😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊"]];
    return textAttrStr;
}

- (void)layoutManager:(NSLayoutManager *)layoutManager didCompleteLayoutForTextContainer:(nullable NSTextContainer *)textContainer atEnd:(BOOL)layoutFinishedFlag {
    NSRange characterRange = [layoutManager characterRangeForGlyphRange:NSMakeRange(0, layoutManager.numberOfGlyphs) actualGlyphRange:nil];
    [layoutManager.textStorage enumerateAttribute:NSAttachmentAttributeName inRange:characterRange options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired usingBlock:^(id  _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        if ([value isKindOfClass:JFTTextAttachment.class]) {
            JFTTextAttachment *attachment = value;
            NSRange glyphRange;
            [layoutManager glyphRangeForCharacterRange:range actualCharacterRange:&glyphRange];
            CGRect rect = [layoutManager boundingRectForGlyphRange:glyphRange inTextContainer:textContainer];
            CGPoint origin = CGPointMake(rect.origin.x, CGRectGetMinY(rect) + self.textView.textContainerInset.top);
            attachment.view.frame = CGRectOffset(attachment.bounds, origin.x, origin.y);
        }
    }];
}
@end


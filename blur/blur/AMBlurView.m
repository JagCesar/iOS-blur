//
//  AMBlurView.m
//  blur
//
//  Created by Cesar Pinto Castillo on 7/1/13.
//  Copyright (c) 2013 Arctic Minds Inc. All rights reserved.
//

#import "AMBlurView.h"
#import <QuartzCore/QuartzCore.h>

@interface AMBlurView ()

@property (nonatomic, strong) CALayer *blurLayer;

@end

@implementation AMBlurView

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    _toolBar = [[UIToolbar alloc] initWithFrame:[self bounds]];
    self.blurLayer = [_toolBar layer];
    
    UIView *blurView = [UIView new];
    [blurView setUserInteractionEnabled:NO];
    [blurView.layer addSublayer:self.blurLayer];
    [blurView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:blurView];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[blurView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blurView)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(-1)-[blurView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blurView)]];
    
    [self setBackgroundColor:[UIColor clearColor]];
    [self setClipsToBounds:YES];
}

- (void) setBlurTintColor:(UIColor *)blurTintColor
{
    _toolBar.barTintColor = blurTintColor;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    [self.blurLayer setFrame:frame];
}

@end

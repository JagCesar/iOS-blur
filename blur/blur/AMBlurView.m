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
    [self setBackgroundColor:[UIColor clearColor]];
    [self setClipsToBounds:YES];
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:[self bounds]];
    CALayer *toolbarLayer = [toolbar layer];
    
    UIView *blurView = [UIView new];
    [blurView setUserInteractionEnabled:NO];
    [blurView.layer addSublayer:toolbarLayer];
    [blurView setAlpha:1.0f];
    
    [self addSubview:blurView];
    [blurView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[blurView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blurView)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(-1)-[blurView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blurView)]];
}

@end

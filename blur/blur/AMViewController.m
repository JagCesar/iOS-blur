//
//  AMViewController.m
//  blur
//
//  Created by Cesar Pinto Castillo on 8/2/13.
//  Copyright (c) 2013 Arctic Minds Inc. All rights reserved.
//

#import "AMViewController.h"
#import "JCRBlurView.h"

@interface AMViewController ()

@property (nonatomic,strong) JCRBlurView *blurView;
@property (nonatomic,strong) UISlider *redSlider;
@property (nonatomic,strong) UISlider *greenSlider;
@property (nonatomic,strong) UISlider *blueSlider;
@property (nonatomic,strong) UISlider *alphaSlider;

@end

@implementation AMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIImageView *imageview = [UIImageView new];
    [imageview setFrame:[self.view bounds]];
    [imageview setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    [imageview setImage:[UIImage imageNamed:@"fish.jpg"]];
    [imageview setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:imageview];
    
    [self setBlurView:[JCRBlurView new]];
    [[self blurView] setFrame:CGRectMake(20.f, 20.f, [self.view bounds].size.width-40.f, [self.view bounds].size.height-40.f)];
    [[self blurView] setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    [self.view addSubview:[self blurView]];
    
    [self setRedSlider:[UISlider new]];
    [[self redSlider] setTintColor:[UIColor redColor]];
    [[self redSlider] setFrame:CGRectMake(0.0f, 50.0f, [[self view] bounds].size.width, 30.0f)];
    [[self redSlider] addTarget:self action:@selector(updateTintColor) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:[self redSlider]];
    
    [self setGreenSlider:[UISlider new]];
    [[self greenSlider] setTintColor:[UIColor greenColor]];
    [[self greenSlider] setFrame:CGRectMake(0.0f, 80.0f, [[self view] bounds].size.width, 30.0f)];
    [[self greenSlider] addTarget:self action:@selector(updateTintColor) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:[self greenSlider]];
    
    [self setBlueSlider:[UISlider new]];
    [[self blueSlider] setTintColor:[UIColor blueColor]];
    [[self blueSlider] setFrame:CGRectMake(0.0f, 20.0f, [[self view] bounds].size.width, 30.0f)];
    [[self blueSlider] addTarget:self action:@selector(updateTintColor) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:[self blueSlider]];
    
    [self setAlphaSlider:[UISlider new]];
    [[self alphaSlider] setTintColor:[UIColor grayColor]];
    [[self alphaSlider] setFrame:CGRectMake(0.0f, 110.0f, [[self view] bounds].size.width, 30.0f)];
    [[self alphaSlider] addTarget:self action:@selector(updateTintColor) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:[self alphaSlider]];
    
    UIButton *resetButton = [UIButton new];
    [resetButton setTitle:@"Reset" forState:UIControlStateNormal];
    [resetButton setFrame:CGRectMake(0.0f, 140.0f, [[self view] bounds].size.width, 30.0f)];
    [resetButton addTarget:self action:@selector(resetTintColor) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:resetButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateTintColor {
    [self.blurView setBlurTintColor:[UIColor colorWithRed:[[self redSlider] value]
                                                    green:[[self greenSlider] value]
                                                     blue:[[self blueSlider] value]
                                                    alpha:[[self alphaSlider] value]]];
}

- (void)resetTintColor {
    [self.blurView setBlurTintColor:nil];
}

@end

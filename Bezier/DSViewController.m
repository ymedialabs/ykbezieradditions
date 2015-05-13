//
//  DSViewController.m
//  Bezier
//
//  Created by Darshan Sonde on 22/05/13.
//  Copyright (c) 2015 YMediaLabs. All rights reserved.
//

#import "DSViewController.h"
#import "DSBezierView.h"
#import "UIBezierPath+Additions.h"
#import <UIKit/UIKit.h>


@interface DSViewController ()

@property (nonatomic, weak) DSBezierView *bv;
@property (nonatomic, weak) DSBezierView *fv;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect top;
    CGRect bottom;
    CGRectDivide(self.view.bounds, &bottom, &top, self.view.bounds.size.height/3, CGRectMaxYEdge);



    UIBezierPath *aPath = [UIBezierPath bezierPath];
    [aPath moveToPoint:     CGPointMake(10+0,          300)];
    [aPath addLineToPoint:  CGPointMake(10+300/6,      180)];
    [aPath addLineToPoint:  CGPointMake(10+2*300/6,    260)];
    [aPath addLineToPoint:  CGPointMake(10+3*300/6,    20)];
    [aPath addLineToPoint:  CGPointMake(10+4*300/6,    260)];
    [aPath addLineToPoint:  CGPointMake(10+5*300/6,    180)];
    [aPath addLineToPoint:  CGPointMake(10+300,      300)];


    DSBezierView *bv=[[DSBezierView alloc] initWithFrame:top];
    bv.bezier = [aPath bezierCardinalWithTension:2.0];
    bv.color = [UIColor blueColor];

    DSBezierView *fv=[[DSBezierView alloc] initWithFrame:top];
    aPath = [aPath bezierFlat];
    fv.bezier = aPath;
    fv.color = [UIColor redColor];



    [self.view addSubview:fv];
    [self.view addSubview:bv];
    [self.view bringSubviewToFront:self.slider];
    self.bv = bv;
    self.fv = fv;
}
- (IBAction)sliderValueChanged:(UISlider*)sender {
    self.bv.bezier = [self.fv.bezier bezierCardinalWithTension:(float)(sender.value)];
}

@end

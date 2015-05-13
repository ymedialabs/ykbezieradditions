//
//  DSBezierView.m
//  Bezier
//
//  Created by Darshan Sonde on 13/05/15.
//  Copyright (c) 2015 YMediaLabs. All rights reserved.
//

#import "DSBezierView.h"

@interface DSBezierView ()

@end

@implementation DSBezierView

-(id) initWithFrame:(CGRect) frame;
{
    self = [super initWithFrame:frame];
    if(self) {
        self.opaque = NO;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

-(void) drawRect:(CGRect)rect
{
    UIBezierPath *aPath = self.bezier;
    [self.color setStroke];
    aPath.lineWidth = 2;
    [aPath stroke];
}

-(void) setBezier:(UIBezierPath *)bezier
{
    _bezier = bezier;
    [self setNeedsDisplay];
}
@end

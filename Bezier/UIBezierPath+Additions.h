//
//  UIBezierPath+Additions.h
//  Bezier
//
//  Created by Darshan Sonde on 13/05/15.
//  Copyright (c) 2015 YMediaLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (Additions)
-(UIBezierPath*) bezierCardinalWithTension:(CGFloat) tension;
-(UIBezierPath*)bezierFlat ;

@end

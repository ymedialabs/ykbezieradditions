//
//  DSBezierView.h
//  Bezier
//
//  Created by Darshan Sonde on 13/05/15.
//  Copyright (c) 2015 YMediaLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSBezierView : UIView
@property (nonatomic, strong) UIBezierPath *bezier;
@property (nonatomic, strong) UIColor *color;
-(id) initWithFrame:(CGRect) frame;
@end

//
//  UIView+Frame.h
//  MrEr
//
//  Created by Chuan on 12/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView(BDPFrame)

@property (nonatomic, assign) float bnjs_width;
@property (nonatomic, assign) float bnjs_height;
@property (nonatomic, assign) float bnjs_posX;
@property (nonatomic, assign) float bnjs_posY;
@property (nonatomic, assign) CGPoint bnjs_centerPos;
@property (nonatomic, assign) float bnjs_top;
@property (nonatomic, assign) float bnjs_left;
@property (nonatomic, assign) float bnjs_right;
@property (nonatomic, assign) CGSize bnjs_size;
@property (nonatomic, assign) float bnjs_centerX;
@property (nonatomic, assign) float bnjs_centerY;

- (float)bnjs_width;
- (float)bnjs_height;
- (float)bnjs_posX;
- (float)bnjs_posY;
- (CGPoint)bnjs_brPos;
- (CGPoint)bnjs_centerPos;
- (CGSize)bnjs_size;
- (float)bnjs_bottom;

- (void)setBnjs_top:(float)top;
- (void)setBnjs_bottom:(float)bottom;
- (void)setBnjs_width:(float)width;
- (void)setBnjs_height:(float)height;
- (void)setBnjs_posX:(float)posx;
- (void)setBnjs_posY:(float)posy;
- (void)setBnjs_left:(float)left;
- (void)setBnjs_right:(float)right;
- (void)bnjs_centerToView:(UIView *)view;
- (void)bnjs_centerToRect:(CGRect)rect;
- (void)setBnjs_size:(CGSize)size;

- (void)bnjs_moveUp:(float)len;
- (void)bnjs_moveRight:(float)len;

- (void)bnjs_showLoadingBee;
- (void)bnjs_removeLoadingBee;

- (void)bnjs_removeAllSubviews;

@end


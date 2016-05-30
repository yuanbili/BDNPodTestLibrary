//
//  UIView+Frame.m
//  MrEr
//
//  Created by Chuan on 12/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UIView+Frame.h"


@implementation UIView(BDPFrame)

@dynamic bnjs_width, bnjs_height,bnjs_posX, bnjs_posY, bnjs_centerPos, bnjs_top, bnjs_right, bnjs_left;

- (float)bnjs_width
{
	return self.frame.size.width;
}

- (float)bnjs_height
{
	return self.frame.size.height;
}

- (float)bnjs_posX
{
	return self.frame.origin.x;
}

- (float)bnjs_posY
{
	return self.frame.origin.y;
}

- (float)bnjs_top{
    return self.frame.origin.y;
}

- (float)bnjs_bottom{
    return self.frame.origin.y + self.frame.size.height;
}

- (float)bnjs_left{
    return self.bnjs_posX;
}

- (float)bnjs_right{
    return self.bnjs_brPos.x;
}

- (CGSize)bnjs_size{
    return CGSizeMake(self.bnjs_width, self.bnjs_height);
}

- (void)setBnjs_size:(CGSize)size{
    self.bnjs_width = size.width;
    self.bnjs_height = size.height;
}

- (CGPoint)bnjs_brPos
{
	return CGPointMake([self bnjs_posX]+[self bnjs_width], [self bnjs_posY]+[self bnjs_height]);
}

- (float)bnjs_centerX
{
    return self.center.x;
}

- (void)setBnjs_centerX:(float)centerX
{
    CGPoint centerPoint  = self.center;
    centerPoint.x = centerX;
    self.center = centerPoint;
}

- (float)bnjs_centerY
{
    return self.center.y;
}

- (void)setBnjs_centerY:(float)centerY
{
    CGPoint centerPoint  = self.center;
    centerPoint.y = centerY;
    self.center = centerPoint;
}

- (CGPoint)bnjs_centerPos
{
	return CGPointMake([self bnjs_width]/2, [self bnjs_height]/2);
}

- (void)setBnjs_centerPos:(CGPoint)pos{
    self.frame = CGRectMake(pos.x - self.bnjs_width/2, pos.y - self.bnjs_height/2, self.bnjs_width, self.bnjs_height);
}

- (void)setBnjs_top:(float)top{
    [self setBnjs_posY:top];
}

- (void)setBnjs_bottom:(float)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)setBnjs_width:(float)width
{
	self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (void)setBnjs_height:(float)height
{
	self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}

- (void)setBnjs_posX:(float)posx
{
	self.frame = CGRectMake(posx, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)setBnjs_left:(float)left{
    [self setBnjs_posX:left];
}

- (void)setBnjs_right:(float)right{
    [self setBnjs_posX:right-self.bnjs_width];
}

- (void)setBnjs_posY:(float)posy
{
	self.frame = CGRectMake(self.frame.origin.x, posy, self.frame.size.width, self.frame.size.height);
}

- (void)bnjs_moveUp:(float)len{
    self.frame = CGRectMake(self.frame.origin.x , self.frame.origin.y- len, self.frame.size.width, self.frame.size.height);
}

- (void)bnjs_moveRight:(float)len{
    self.frame = CGRectMake(self.frame.origin.x + len, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)bnjs_centerToView:(UIView *)view
{
    [self setBnjs_posX:([view bnjs_width] - [self bnjs_width])/2];
    [self setBnjs_posY:([view bnjs_height] - [self bnjs_height])/2];
}

- (void)bnjs_centerToRect:(CGRect)rect{
    [self setBnjs_posX:(rect.size.width - [self bnjs_width])/2];
    [self setBnjs_posY:(rect.size.height - [self bnjs_height])/2];

}

- (void)bnjs_showLoadingBee{
    UIActivityIndicatorView* loadingView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    loadingView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    [loadingView startAnimating];
    [loadingView bnjs_centerToView:self];
    [self addSubview:loadingView];
}

- (void)bnjs_removeLoadingBee{
    for ( UIView* loadingView in [self subviews]){
        if ([loadingView isKindOfClass:[UIActivityIndicatorView class]]) {
            [loadingView removeFromSuperview];
            break;
        }
    }
}

- (void)bnjs_removeAllSubviews{
    for ( UIView* subview in [self subviews]){
        [subview removeFromSuperview];
    }
}

@end

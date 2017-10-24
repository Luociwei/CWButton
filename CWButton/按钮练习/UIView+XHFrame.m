//
//  UIView+XHFrame.m
//  BigShot
//
//  Created by xiaohui on 16/9/23.
//  Copyright © 2016年 xiaohui. All rights reserved.
//

#import "UIView+XHFrame.h"

@implementation UIView (XHFrame)


#pragma  mark - X坐标
- (CGFloat)xh_X{
    return self.frame.origin.x;
}

- (void)setXh_X:(CGFloat)xh_X{
    CGRect  frame = self.frame;
    frame.origin.x = xh_X;    
    self.frame = frame;
}
#pragma  mark - Y坐标
- (CGFloat)xh_Y{
    return self.frame.origin.y;
}
- (void)setXh_Y:(CGFloat)xh_Y{
    CGRect  frame = self.frame;
    frame.origin.y = xh_Y;
    self.frame = frame;
}
#pragma  mark - width宽度
- (CGFloat)xh_Width{
    return self.frame.size.width;    
}
- (void)setXh_Width:(CGFloat)xh_Width{
    CGRect  frame = self.frame;
    frame.size.width = xh_Width;
    self.frame = frame;
}
#pragma  mark - height高度
- (CGFloat)xh_Height{
    return self.frame.size.height;
}
- (void)setXh_Height:(CGFloat)xh_Height{
    CGRect  frame = self.frame;
    frame.size.height = xh_Height;
    self.frame = frame;
}
#pragma  mark - 中心点X
- (CGFloat)xh_CenterX{
    return self.center.x;
}
- (void)setXh_CenterX:(CGFloat)xh_CenterX{
    CGPoint  center = self.center;
    center.x = xh_CenterX;
    self.center = center;
}
#pragma  mark - 中心点Y
- (CGFloat)xh_CenterY{
    return self.center.y;
}
- (void)setXh_CenterY:(CGFloat)xh_CenterY{
    CGPoint  center = self.center;
    center.y = xh_CenterY;
    self.center = center;
}

#pragma  mark - left左边线
- (CGFloat)xh_Left{
    return self.xh_X;
}
- (void)setXh_Left:(CGFloat)xh_Left{
    self.xh_X = xh_Left;
}

#pragma  mark - right右边线
- (CGFloat)xh_Right{
    return CGRectGetMaxX(self.frame);
}
- (void)setXh_Right:(CGFloat)xh_Right{
    self.xh_X = xh_Right - self.xh_Width;
}

#pragma  mark - top顶部边线
- (CGFloat)xh_Top{
    return self.xh_Y;
}
- (void)setXh_Top:(CGFloat)xh_Top{
    self.xh_Y = xh_Top;
}

#pragma  mark - button底部边线
- (CGFloat)xh_Buttom{
    return CGRectGetMaxY(self.frame);
}
- (void)setXh_Buttom:(CGFloat)xh_Buttom{
    self.xh_Y = xh_Buttom - self.xh_Height;
}

@end

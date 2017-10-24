//
//  NavButton.m
//  按钮练习
//
//  Created by 罗刺猬 on 2017/10/19.
//  Copyright © 2017年 Foxconn. All rights reserved.
//

#import "CWButton.h"

@implementation CWButton

+(instancetype)cw_button
{
    return [[self alloc]init];
}

/** fffffff自定义View的构造方法，初始化就会调用 */
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setNeedsLayout];
    }
    return self;
}

-(void)setImageSize:(CGSize)imageSize
{
    _cw_imageSize = imageSize;
   
}


-(void)cw_configImageViewSize:(CGSize)imageSize middleSpace:(CGFloat)middleSpace
{
    _cw_imageSize = imageSize;
    
    _cw_middleSpace = middleSpace;
}

-(void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    [super setImage:image forState:state];
  
}

-(void)cw_updateButton
{
    [self layoutIfNeeded];
}

-(void)setLabelMaxLabelWith:(CGFloat)labelMaxLabelWith
{
    self.titleLabel.preferredMaxLayoutWidth = labelMaxLabelWith;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.currentImage == nil || [NSStringFromCGSize(self.cw_imageSize) isEqualToString:@"{0, 0}"]) {
        NSLog(@"没有设置按钮内部图片的内容或大小");
        return;
    }

    self.imageView.frame = (CGRect){(CGPointZero),{self.cw_imageSize.width,self.cw_imageSize.height}};
    
    CGRect titleLabelFrame = self.titleLabel.frame;
    titleLabelFrame.origin.x = self.imageView.frame.size.width+self.cw_middleSpace;
    self.titleLabel.frame = titleLabelFrame;
    CGPoint titleLabelCenter = self.titleLabel.center;
    titleLabelCenter.y = self.imageView.center.y;
    self.titleLabel.center = titleLabelCenter;
    [self.titleLabel sizeToFit];
 
    self.frame = (CGRect){(self.frame.origin),{self.titleLabel.frame.origin.x + self.cw_middleSpace + self.titleLabel.frame.size.width,self.imageView.frame.size.height}};
   
}


@end

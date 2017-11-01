//
//  NavButton.m
//  按钮练习
//
//  Created by 罗刺猬 on 2017/10/19.
//  Copyright © 2017年 Foxconn. All rights reserved.
//

#import "CWButton.h"
#import "UIView+XHFrame.h"

@interface CWButton ()

@end

@implementation CWButton

+(instancetype)cw_buttonWithEdgeInsetsStyle:(CWButtonEdgeInsetsStyle)buttonType
{
    CWButton *button = [[self alloc]init];
    
    button.cw_ButtonType = buttonType;
    
    return button;
    
}

/** 自定义View的构造方法，初始化就会调用 */
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setNeedsLayout];
        self.cw_ButtonType = CWButtonEdgeInsetsStyleLeft;
    }
    return self;
}

-(void)setCw_buttonOrigin:(CGPoint)cw_buttonOrigin
{
    _cw_buttonOrigin = cw_buttonOrigin;
    self.xh_X = cw_buttonOrigin.x;
    self.xh_Y = cw_buttonOrigin.y;
}

-(void)setCw_imageSize:(CGSize)cw_imageSize
{
    _cw_imageSize = cw_imageSize;
}

-(void)cw_configButtonOrigin:(CGPoint)origin ImageViewSize:(CGSize)size middleSpace:(CGFloat)middleSpace
{
    self.cw_buttonOrigin = origin;
    
    self.cw_imageSize = size;
    
    self.cw_middleSpace = middleSpace;
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

    [self.titleLabel sizeToFit];
    
    self.imageView.xh_size = self.cw_imageSize;
    
    switch (self.cw_ButtonType) {
        case CWButtonEdgeInsetsStyleTop:{
            
            [self setButtonEdgeInsetsStyleTop];
            
        }break;
            
        case CWButtonEdgeInsetsStyleLeft:{
            
            [self setButtonEdgeInsetsStyleLeft];
            
        }break;
            
        case CWButtonEdgeInsetsStyleBottom:{
            
            [self setButtonEdgeInsetsStyleBottom];
            
            
        }break;
            
        case CWButtonEdgeInsetsStyleRight:{
            
             [self setButtonEdgeInsetsStyleRight];
            
            
        }break;
            
        default:{
            
            //[self setButtonEdgeInsetsStyleLeft];
        }
            break;
    }
    
    
}

-(void)setButtonEdgeInsetsStyleTop
{
    
    CGFloat width = 0;
    
    if (self.titleLabel.xh_Width > self.imageView.xh_Width) {
        
        width= self.titleLabel.xh_Width;
        
        self.titleLabel.xh_Y = self.imageView.xh_Height + self.cw_middleSpace;
        self.titleLabel.xh_X = 0;
        
        self.imageView.xh_CenterX = self.titleLabel.xh_CenterX;
        self.imageView.xh_Y = 0;
        
    }else{
        
        width= self.imageView.xh_Width;
        self.imageView.xh_X = 0;
        self.imageView.xh_Y = 0;
        
        self.titleLabel.xh_Y = self.imageView.xh_Height + self.cw_middleSpace;
        self.titleLabel.xh_CenterX = self.imageView.xh_CenterX;
    }
    
    self.frame = (CGRect){(self.frame.origin),{width,self.imageView.xh_Height+self.cw_middleSpace + self.titleLabel.xh_Height}};
}

-(void)setButtonEdgeInsetsStyleLeft
{
    self.imageView.xh_X = 0;
    self.imageView.xh_Y = 0;
    [self.titleLabel sizeToFit];
    
    self.titleLabel.xh_X = self.imageView.xh_Width + self.cw_middleSpace;
    self.titleLabel.xh_CenterY = self.imageView.xh_CenterY;
    
    self.frame = (CGRect){(self.frame.origin),{self.titleLabel.xh_X + self.cw_middleSpace + self.titleLabel.xh_Width,self.imageView.xh_Height}};
}

-(void)setButtonEdgeInsetsStyleBottom
{
    CGFloat width = 0;
    
    if (self.titleLabel.xh_Width > self.imageView.xh_Width) {
        
        width = self.titleLabel.xh_Width;
        
        self.titleLabel.xh_Y = 0;
        self.titleLabel.xh_X = 0;
        
        self.imageView.xh_CenterX = self.titleLabel.xh_CenterX;
        self.imageView.xh_Y = self.titleLabel.xh_Height + self.cw_middleSpace;
        
    }else{
        
        width = self.imageView.xh_Width;
        
        self.imageView.xh_X = 0;
        self.imageView.xh_Y = self.titleLabel.xh_Height + self.cw_middleSpace;
        
        self.titleLabel.xh_Y = 0;
        self.titleLabel.xh_CenterX = self.imageView.xh_CenterX;
        
    }
    self.frame = (CGRect){(self.frame.origin),{width,self.imageView.xh_Height+self.cw_middleSpace + self.titleLabel.xh_Height}};
    

}


-(void)setButtonEdgeInsetsStyleRight
{
    self.titleLabel.xh_X = 0;
    self.titleLabel.xh_CenterY = self.imageView.xh_Height/2;
    self.imageView.xh_X = self.titleLabel.xh_Right + self.cw_middleSpace;
    self.imageView.xh_Y = 0;
    self.frame = (CGRect){(self.frame.origin),{self.titleLabel.xh_X + self.cw_middleSpace + self.titleLabel.xh_Width,self.imageView.xh_Height}};
}

@end

//
//  NavButton.h
//  按钮练习
//
//  Created by 罗刺猬 on 2017/10/19.
//  Copyright © 2017年 Foxconn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWButton : UIButton

+(instancetype)cw_button;

@property (nonatomic, assign) CGFloat cw_middleSpace;

@property (nonatomic, assign) CGSize cw_imageSize;

-(void)cw_configImageViewSize:(CGSize)size middleSpace:(CGFloat)middleSpace;

@property (nonatomic, assign) CGFloat cw_labelMaxLabelWith;

-(void)cw_updateButton;

@end

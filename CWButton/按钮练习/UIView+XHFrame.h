//
//  UIView+XHFrame.h
//  BigShot
//
//  Created by xiaohui on 16/9/23.
//  Copyright © 2016年 xiaohui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XHFrame)


/**  控件的x坐标 */
@property (nonatomic,assign) CGFloat  xh_X;

/**  控件的Y坐标 */
@property (nonatomic,assign) CGFloat  xh_Y;

//@property (nonatomic, assign) CGPoint *xh_Origin;

/**  控件的宽度 */
@property (nonatomic,assign) CGFloat  xh_Width;

/**  控件的高度 */
@property (nonatomic,assign) CGFloat  xh_Height;

/**  控件的中心点x坐标 */
@property (nonatomic,assign) CGFloat  xh_CenterX;

/**  控件的中心点y坐标 */
@property (nonatomic,assign) CGFloat  xh_CenterY;

/**  控件的left右边线x坐标 */
@property (nonatomic,assign) CGFloat  xh_Left;

/**  控件的Top底部边线y坐标 */
@property (nonatomic,assign) CGFloat  xh_Top;

/**  控件的right右边线x坐标 */
@property (nonatomic,assign) CGFloat  xh_Right;

/**  控件的buttom底部边线y坐标 */
@property (nonatomic,assign) CGFloat  xh_Bottom;

@property (nonatomic, assign) CGSize xh_size;

+ (instancetype)viewFromXib;

- (BOOL)intersectWithView:(UIView *)view;
@end

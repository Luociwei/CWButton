//
//  ViewController.m
//  按钮练习
//
//  Created by ie on 2017/10/19.
//  Copyright © 2017年 Foxconn. All rights reserved.
//

#import "ViewController.h"
#import "CWButton.h"

@interface ViewController ()

@property (nonatomic, strong) CWButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self btn];


}


-(CWButton *)btn
{
    if (_btn == nil) {
        _btn = [CWButton buttonWithType:UIButtonTypeCustom];
        [_btn setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal];
        [_btn setTitle:@"WOAIDA咖" forState:UIControlStateNormal];
        _btn.titleLabel.font = [UIFont systemFontOfSize:13];
        _btn.cw_imageSize = CGSizeMake(40, 40);
        _btn.cw_middleSpace = 10;
        _btn.cw_ButtonType = CWButtonEdgeInsetsStyleTop;
        _btn.backgroundColor = [UIColor grayColor];
        [self.view addSubview:_btn];
    }
    return _btn;
}


@end

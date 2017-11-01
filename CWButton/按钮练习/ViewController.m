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
    
    NSLog(@"%@",NSStringFromCGRect(self.btn.frame));

}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"%@",NSStringFromCGRect(self.btn.frame));
}

-(CWButton *)btn
{
    if (_btn == nil) {
        _btn = [CWButton new];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal];
        [_btn setTitle:@"fs" forState:UIControlStateNormal];
        _btn.titleLabel.font = [UIFont systemFontOfSize:13];
        [_btn cw_configButtonOrigin:CGPointMake(100, 100) ImageViewSize:CGSizeMake(40, 40) middleSpace:5];
        
        _btn.backgroundColor = [UIColor grayColor];
        [self.view addSubview:_btn];
    }
    return _btn;
}


@end

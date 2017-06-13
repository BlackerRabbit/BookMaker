//
//  YSBaseViewController.m
//  MagicBox
//
//  Created by zhengfeng1 on 2017/3/14.
//  Copyright © 2017年 vmovier. All rights reserved.
//

#import "YSBaseViewController.h"

@interface YSBaseViewController ()

@property (nonatomic, strong, readwrite) UIButton *saveBtn;
@property (nonatomic, strong, readwrite) UIButton *countBtn;


@end

@implementation YSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *rightAry = nil;
    if (self.type == RigthBarTypeSaveOnly) {
        UIBarButtonItem *saveBar = [[UIBarButtonItem alloc]initWithCustomView:self.saveBtn];
        rightAry = @[saveBar];
    }else{
        UIBarButtonItem *saveBar = [[UIBarButtonItem alloc]initWithCustomView:self.saveBtn];
        UIBarButtonItem *countBar = [[UIBarButtonItem alloc]initWithCustomView:self.countBtn];
        rightAry = @[countBar,saveBar];
    }
    self.navigationItem.rightBarButtonItems = rightAry;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - button actions ------

-(void)countBtnClicked:(id)sender{

}

-(void)saveBtnClicked:(id)sender{

}


#pragma mark - lazy actions ------

-(UIButton *)saveBtn{
    if (_saveBtn == nil) {
        _saveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_saveBtn setTitle:@"计算" forState:UIControlStateNormal];
        [_saveBtn addTarget:self action:@selector(saveBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _saveBtn;
}

-(UIButton *)countBtn{
    if (_countBtn == nil) {
        _countBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_countBtn setTitle:@"保存" forState:UIControlStateNormal];
        [_countBtn addTarget:self action:@selector(countBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _countBtn;
}




@end

//
//  YSBaseViewController.h
//  MagicBox
//
//  Created by zhengfeng1 on 2017/3/14.
//  Copyright © 2017年 vmovier. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RightBarType){

    RigthBarTypeSaveOnly        = 1 << 0,
    RigthBarTypeSaveAndCount    = 1 << 1,
};

@interface YSBaseViewController : UIViewController

@property (nonatomic, assign, readwrite) RightBarType type;


@end

//
//  ZlNaviTitlePopupMenuView.h
//  ZlBI
//
//  Created by zhouhuan on 16/5/13.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZlNaviTitlePopupMenuView : UIView

@property (readwrite, nonatomic, strong) UIImage *image;
@property (readwrite, nonatomic, strong) NSString *title;
@property (readwrite, nonatomic, weak) id target;
@property (readwrite, nonatomic) SEL action;


@property (nonatomic, strong)   UILabel             *labTitle;
@property (nonatomic, strong)   UIButton            *btnTitle;

-(instancetype)initWithTitleMsg:(NSString *)title
                       btnImage:(UIImage *)image
                         target:(id)target
                         action:(SEL) action;
@end

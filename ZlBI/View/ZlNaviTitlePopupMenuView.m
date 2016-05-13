//
//  ZlNaviTitlePopupMenuView.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/13.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ZlNaviTitlePopupMenuView.h"




@implementation ZlNaviTitlePopupMenuView



-(instancetype)initWithTitleMsg:(NSString *)title
                       btnImage:(UIImage *)image
                         target:(id)target
                         action:(SEL) action
{
    self = [super init];
    if (self) {
        _title = title;
        _image = image;
        _target = target;
        _action = action;
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //
    
    [self addSubview:self.labTitle];
    [self.labTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX).with.offset(20);
        make.centerY.mas_equalTo(self.mas_centerY);
        make.size.mas_equalTo([NSString sizeForTitle:self.labTitle.text withFont:self.labTitle.font]);
    }];
    [self addSubview:self.btnTitle];
    [self.btnTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.labTitle.mas_right).with.offset(5);
        make.centerY.mas_equalTo(self.mas_centerY);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
    }];
}
-(UILabel *)labTitle
{
    if (!_labTitle) {
        _labTitle = [[UILabel alloc] init];
        _labTitle.text = _title;
    }
    return _labTitle;
}
-(UIButton *)btnTitle
{
    if (!_btnTitle) {
        _btnTitle = [UIButton buttonWithType:UIButtonTypeSystem];
        [_btnTitle setImage:_image forState:UIControlStateNormal];
        [_btnTitle addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btnTitle;
}
-(void)btnClick:(id)sender
{
    __strong id target = self.target;
    
    if (target && [target respondsToSelector:_action]) {
        
        [target performSelectorOnMainThread:_action withObject:sender waitUntilDone:YES];
    }
}

@end

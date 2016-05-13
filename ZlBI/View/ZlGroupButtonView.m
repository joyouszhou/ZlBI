//
//  ZlGroupButtonView.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/11.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ZlGroupButtonView.h"

@implementation ZlGroupButtonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)init
{
    self = [super init];
    self.buttons = [[NSMutableArray alloc] init];
    self.buttonsTag =[[NSMutableArray alloc] init];
    self.btnCount = 0;
    
    return self;
}
-(void)addGroupButton:(UIButton *)btn  withtag:(id)tag;
{
    //添加Btn到array里面
    [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
   
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.lastBtn?self.lastBtn.mas_right:self.mas_left).with.offset(1);
        make.top.mas_equalTo(self.mas_top);
        make.height.mas_equalTo(self.mas_height);
        make.width.mas_equalTo(self.mas_width).multipliedBy(1.00/(self.btnCount+1));
    }];
    for(int i=0;i<self.buttons.count;i++)
    {
        [self.buttons[i] mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(self.mas_width).multipliedBy(1.00/(self.btnCount+1));
        }];
    }
    self.btnCount++;
    self.lastBtn = btn;
    [self.buttons addObject:btn];
    [self.buttonsTag addObject:tag];
}
-(void)buttonPressed:(id)sender
{
    //发送进来的btn
    for(int i=0;i<self.buttons.count;i++)
    {
        ((UIButton *)self.buttons[i]).selected = NO;
        if (self.buttons[i] == sender) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(ZlGroupBtnSelecte:)]) {
                [self.delegate ZlGroupBtnSelecte:self.buttonsTag[i]];
            }
        }
    }
    ((UIButton *)sender).selected = YES;
}


@end

//
//  ZlTableViewCell.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/9.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ZlTableViewCell.h"
@interface ZlTableViewCell()

@property (nonatomic, strong) UIImageView       *imageTitle;
@property (nonatomic, strong) UILabel           *labelText;
@property (nonatomic, strong) UILabel           *detaillabel;
@property (nonatomic, strong) UIImageView       *detailImage;
@property (nonatomic, strong) UISwitch          *detailSwithBtn;
@property (nonatomic, strong) UIButton          *detailBtn;


@end

@implementation ZlTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCellModel:(ZlCellItemModel *)cellModel
{
    _cellModel = cellModel;
    [self setupUI];
    [self Configure];
    
}
-(void)Configure
{
    //根据类型判断显示类型
    if (_cellModel.accessType&ZlCellItemStyleTitle) {
        if (self.cellModel.textTitleName&&self.cellModel.textTitleName>0) {
            self.labelText.text = self.cellModel.textTitleName;
            [self.labelText setHidden:NO];
            [self.labelText mas_updateConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo([NSString sizeForTitle:_cellModel.textTitleName withFont:self.labelText.font]);
            }];
        }
    }
    if (_cellModel.accessType&ZlCellItemStyleTitleimage) {
        if (self.cellModel.imageFile &&self.cellModel.imageFile>0) {
            [self.imageTitle setImage:[UIImage imageNamed:self.cellModel.imageFile]];
            [self.imageTitle setHidden:NO];
            [self.imageTitle mas_updateConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(self.contentView.mas_height);
                make.height.mas_equalTo(self.contentView.mas_height);
            }];
        }
    }
    if (_cellModel.accessType&ZlCellItemStyleDetailText) {
        if (self.cellModel.textDetail &&self.cellModel.textDetail>0) {
            [self.detaillabel setText:self.cellModel.textDetail];
            [self.detaillabel setHidden:NO];
            [self.detaillabel mas_updateConstraints:^(MASConstraintMaker *make) {
               make.size.mas_equalTo([NSString sizeForTitle:_cellModel.textTitleName?_cellModel.textTitleName:@"" withFont:self.labelText.font]);
            }];
        }
        
    }
    if (_cellModel.accessType&ZlCellItemStyleDetailSwitchBtn) {
        [self.detailSwithBtn setHidden:NO];
        [self.detailSwithBtn mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(self.contentView.mas_height);
            make.height.mas_equalTo(self.contentView.mas_height);
        }];
    }
    if (_cellModel.accessType&ZlCellItemStyleDetailBtn) {
        [self.detailBtn setHidden:NO];
        [self.detailBtn mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(self.contentView.mas_height);
            make.height.mas_equalTo(self.contentView.mas_height);
        }];
    }
    if (_cellModel.accessType&ZlCellItemStyleDetailImage) {
        if (self.cellModel.imageDetail &&self.cellModel.imageDetail>0) {
            [self.detailImage setImage:[UIImage imageNamed:self.cellModel.imageDetail]];
            [self.detailImage setHidden:NO];
            [self.detailImage mas_updateConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(self.contentView.mas_height);
                make.height.mas_equalTo(self.contentView.mas_height);
            }];
        }
    }
}

-(void)setupUI
{
    //进行UI初始化
    //title Image
    [self.contentView addSubview:self.imageTitle];
    [self.imageTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView.mas_left).with.offset(5);
        make.top.mas_equalTo(self.contentView.mas_top);
        make.width.mas_equalTo(0);
        make.height.mas_equalTo(0);
       
    }];
    [self.imageTitle setHidden:YES];
    //title lab
    [self.contentView addSubview:self.labelText];
    [self.labelText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.imageTitle.mas_right).with.offset(5);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.width.mas_equalTo(0);
        make.height.mas_equalTo(0);
    }];
    [self.labelText setHidden:YES];
    [self.contentView addSubview:self.detailSwithBtn];
    [self.detailSwithBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView.mas_right).with.offset(-5);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.width.mas_equalTo(0);
        make.height.mas_equalTo(0);
    }];
    [self.detailSwithBtn setHidden:YES];
    [self.contentView addSubview:self.detailBtn];
    [self.detailBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.detailSwithBtn.mas_left).with.offset(-5);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.width.mas_equalTo(0);
        make.height.mas_equalTo(0);
    }];
    
    [self.detailBtn setHidden:YES];
    
    [self.contentView addSubview:self.detailImage];
    [self.detailImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.detailBtn.mas_left).with.offset(-5);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.width.mas_equalTo(0);
        make.height.mas_equalTo(0);
       
    }];
    [self.detailImage setHidden:YES];
    [self.contentView addSubview:self.detaillabel];
    [self.detaillabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.detailImage.mas_left).with.offset(-5);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.width.mas_equalTo(0);
        make.height.mas_equalTo(0);
    }];
}
-(UIImageView *)imageTitle
{
    if (!_imageTitle) {
        _imageTitle             =   [[UIImageView alloc] init];
        _imageTitle.contentMode =   UIViewContentModeScaleAspectFit;
    }
    return _imageTitle;
}
-(UILabel *)labelText
{
    if (!_labelText) {
        _labelText = [[UILabel alloc] init];
        
    }
    return _labelText;
}
-(UILabel *)detaillabel
{
    if (!_detaillabel) {
        _detaillabel = [[UILabel alloc] init];
    }
    return _detaillabel;
}
-(UISwitch *)detailSwithBtn
{
    if (!_detailSwithBtn) {
        _detailSwithBtn = [[UISwitch alloc] init];
        [_detailSwithBtn addTarget:self action:@selector(switchTouched:) forControlEvents:UIControlEventValueChanged];
    }
    return _detailSwithBtn;
}
-(UIButton *)detailBtn
{
    if (!_detailBtn) {
        _detailBtn=[UIButton buttonWithType:UIButtonTypeSystem];
    }
    return _detailBtn;
}
-(UIImageView *)detailImage
{
    if (!_detailImage) {
        _detailImage = [[UIImageView alloc] init];
    }
    return _detailImage;
}
- (void)switchTouched:(UISwitch *)sw
{
  
}

@end

//
//  ZlTableViewCell.h
//  ZlBI
//
//  Created by zhouhuan on 16/5/9.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZlCellItemModel.h"
@interface ZlTableViewCell : SWTableViewCell

/**
 *  Cell的参数
 */
@property (nonatomic, strong)         ZlCellItemModel       *cellModel;



@end

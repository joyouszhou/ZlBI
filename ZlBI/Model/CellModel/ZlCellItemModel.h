//
//  ZlCellSettingModel.h
//  ZlBI
//
//  Created by zhouhuan on 16/5/9.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZlCellItemModel : NSObject

/**
 *  Cell的右边的类型
 */
typedef NS_ENUM(NSInteger, ZlCellItemStyle) {
    /**
     *  显示标题
    */
    ZlCellItemStyleTitle                             =   1<<1,
    /**
     *  image
     */
    ZlCellItemStyleTitleimage                        =   1<<2,
    /**
     *  显示图片标题及其
     */
    ZlCellItemStyleDetailText                        =   1<<3,
    /**
     *  切换按钮
     */
    ZlCellItemStyleDetailSwitchBtn                   =   1<<4,
    /**
     *  按钮
     */
    ZlCellItemStyleDetailBtn                         =   1<<5,
    /**
     *  图片 
     */
    ZlCellItemStyleDetailImage                       =   1<<6,
};

@property (nonatomic, strong)   NSString *              textTitleName;                  //Cell的标题
@property (nonatomic, strong)   NSString *              textDetail;                     //Cell的描述名称
@property (nonatomic, strong)   NSString *              imageFile;                      //Cell的标题图片
@property (nonatomic, strong)   NSString *              imageDetail;                    //Cell的描述图片
@property (nonatomic, assign)   ZlCellItemStyle         accessType;                     //Cell的描述显示类型


@end

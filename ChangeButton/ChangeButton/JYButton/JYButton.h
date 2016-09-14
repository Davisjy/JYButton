//
//  JYButton.h
//  ChangeButton
//
//  Created by Davis on 16/9/14.
//  Copyright © 2016年 Davis. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  按钮标题位置
 */
typedef NS_ENUM(NSUInteger, JYButtonTitleType) {
    /**
     *  标题在上方
     */
    JYButtonTitleTypeTop,
    /**
     *  标题在下方
     */
    JYButtonTitleTypeBottom,
    /**
     *  标题在左边
     */
    JYButtonTitleTypeLeft,
};

/**
 *  默认图片就是在左边文字在右边
 */
@interface JYButton : UIButton
/** 按钮标题位置的类型 */
@property (nonatomic, assign) JYButtonTitleType type;
/**
 *  得到按钮
 *
 *  @param titleStr 按钮标题文字
 *  @param font     按钮标题文字的大小
 *  @param color    按钮标题文字的颜色
 *  @param imageStr 按钮的图片
 *  @param type     按钮标题位置类型
 */
+ (instancetype)getButtonWithTitle:(NSString *)titleStr titleFont:(CGFloat)font titleColor:(UIColor *)color andIcon:(NSString *)imageStr andType:(JYButtonTitleType)type;

@end

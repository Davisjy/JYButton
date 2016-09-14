//
//  JYButton.m
//  ChangeButton
//
//  Created by Davis on 16/9/14.
//  Copyright © 2016年 Davis. All rights reserved.
//

#import "JYButton.h"
#import "UIView+Awesome.h"

@implementation JYButton

+ (instancetype)getButtonWithTitle:(NSString *)titleStr titleFont:(CGFloat)font titleColor:(UIColor *)color andIcon:(NSString *)imageStr andType:(JYButtonTitleType)type {
    
    JYButton *btn = [JYButton buttonWithType:UIButtonTypeCustom];

    btn.titleLabel.font = font ? [UIFont systemFontOfSize:font]: [UIFont systemFontOfSize:14];
    btn.titleLabel.textColor = color ? color : [UIColor blackColor];
    
    [btn setTitle:titleStr forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    btn.type = type;
    
    return btn;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    switch (_type) {
        case JYButtonTitleTypeTop: {
            // 修改标题位置
            self.titleLabel.x = 0;
            self.titleLabel.y = 0;
            self.titleLabel.width = self.width;
            // 修改图片位置
            self.imageView.width = self.width * 0.7;
            self.imageView.height = self.imageView.width;
            self.imageView.x = (self.width - self.imageView.width ) / 2;
            self.imageView.y = self.titleLabel.height;
        }
            break;
        case JYButtonTitleTypeBottom: {

            self.imageView.width = self.width * 0.7;
            self.imageView.height = self.imageView.width;
            self.imageView.x = (self.width - self.imageView.width ) / 2;
            self.imageView.y = 0;

            self.titleLabel.x = 0;
            self.titleLabel.y = self.imageView.height;
            self.titleLabel.width = self.width;
//            self.titleLabel.height = self.height - self.titleLabel.y;
        }
            break;
        case JYButtonTitleTypeLeft : {
            
            self.titleLabel.x = 0;
            self.titleLabel.width = self.width * 0.5;
            self.titleLabel.y = 0;
            self.titleLabel.height = self.height;
            
            self.imageView.x = self.titleLabel.width;
            self.imageView.y = 0;
            self.imageView.width = self.width - self.imageView.x;
            self.imageView.height = self.height;
        }
            break;
        default:
            break;
    }
}

@end

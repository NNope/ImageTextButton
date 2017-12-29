//
//  ImageTextButton.h
//  333
//
//  Created by 谈Xx on 2017/12/27.
//  Copyright © 2017年 谈Xx. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,ButtonImageType)
{
    ButtonImageTypeLeft = 0,
    ButtonImageTypeTop,
    ButtonImageTypeRight,
    ButtonImageTypeBottom
};
IB_DESIGNABLE
@interface ImageTextButton : UIButton
@property (nonatomic, assign) IBInspectable ButtonImageType imageType;
@property (nonatomic, assign) IBInspectable CGFloat imageMargin;
@property (nonatomic, assign) IBInspectable CGFloat contentLeftMargin;
//@property (nonatomic, assign) IBInspectable CGFloat contentTopMargin;

+ (ImageTextButton *)ITButtonWithTitle:(NSString *)title Image:(NSString *)imagename ButtonImageType:(ButtonImageType)type;
@end

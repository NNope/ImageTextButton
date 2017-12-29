//
//  ImageTextButton.m
//  333
//
//  Created by 谈Xx on 2017/12/27.
//  Copyright © 2017年 谈Xx. All rights reserved.
//

#import "ImageTextButton.h"

@interface ImageTextButton()

@property (nonatomic, assign) CGSize imgSize;
@property (nonatomic, assign) CGSize titleSize;
@property (nonatomic, assign) CGFloat boundsHeight;
@property (nonatomic, assign) CGFloat boundsWidth;
@end

@implementation ImageTextButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageMargin = 5;
    }
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self setImageTitleSize];
}

+ (ImageTextButton *)ITButtonWithTitle:(NSString *)title Image:(NSString *)imagename ButtonImageType:(ButtonImageType)type
{
    ImageTextButton *button = [ImageTextButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:imagename] forState:UIControlStateNormal];
    button.imageType = type;
    [button setImageTitleSize];
    
    return button;
}

- (void)setImageTitleSize
{
    self.imgSize = CGSizeZero;
    self.titleSize = CGSizeZero;
    UIImage *img = [self imageForState:UIControlStateNormal];
    NSString *titleStr = [self titleForState:UIControlStateNormal];
    if (img)
    {
        self.imgSize = img.size;
    }
    if (titleStr && titleStr.length > 0)
    {
        
        UIFont *fnt = self.titleLabel.font;
        self.titleSize = [self.titleLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:fnt,NSFontAttributeName, nil]];
    }
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat x = (self.bounds.size.width - self.titleSize.width)/2;;
    CGFloat y = (self.bounds.size.height - self.titleSize.height)/2;
    if (!CGSizeEqualToSize(self.imgSize, CGSizeZero))
    {
        if (self.imageType == ButtonImageTypeTop)
        {
            y = (self.bounds.size.height - (self.imgSize.height + self.imageMargin + self.titleSize.height))/2 + self.imgSize.height + self.imageMargin;
            x = self.contentLeftMargin?:x;
        }
        else if (self.imageType == ButtonImageTypeBottom)
        {
            y = (self.bounds.size.height - (self.imgSize.height + self.imageMargin + self.titleSize.height))/2 ;
            x = self.contentLeftMargin?:x;
        }
        else if (self.imageType == ButtonImageTypeLeft)
        {
            CGFloat centerx = (self.bounds.size.width - (self.imgSize.width + self.imageMargin + self.titleSize.width))/2 + self.imgSize.width + self.imageMargin;
            x = self.contentLeftMargin>0?self.contentLeftMargin+self.imgSize.width + self.imageMargin:centerx;
        }
        else if (self.imageType == ButtonImageTypeRight)
        {
            CGFloat centerx = (self.bounds.size.width - (self.imgSize.width + self.imageMargin + self.titleSize.width))/2;
            x = self.contentLeftMargin?:centerx;
        }
    }
    return CGRectMake(x, y, self.titleSize.width, self.titleSize.height);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat x = (self.bounds.size.width - self.imgSize.width) / 2;
    CGFloat y = (self.bounds.size.height - self.imgSize.height) / 2;
    if (!CGSizeEqualToSize(self.titleSize, CGSizeZero))
    {
        if (self.imageType == ButtonImageTypeBottom)
        {
            y = (self.bounds.size.height - (self.imgSize.height + self.imageMargin + self.titleSize.height))/2 + self.titleSize.height + self.imageMargin;
            x = self.contentLeftMargin>0?self.contentLeftMargin+(self.titleSize.width-self.imgSize.width)/2:x;
        }
        else if (self.imageType == ButtonImageTypeTop)
        {
            y = (self.bounds.size.height - (self.imgSize.height + self.imageMargin + self.titleSize.height))/2;
            x = self.contentLeftMargin>0?self.contentLeftMargin+(self.titleSize.width-self.imgSize.width)/2:x;
        }
        else if (self.imageType == ButtonImageTypeLeft)
        {
            CGFloat centerx = (self.bounds.size.width - (self.imgSize.width + self.imageMargin + self.titleSize.width))/2;
            x = self.contentLeftMargin?:centerx;
        }
        else if (self.imageType == ButtonImageTypeRight)
        {
            CGFloat centerx = (self.bounds.size.width - (self.imgSize.width + self.imageMargin + self.titleSize.width))/2  + self.titleSize.width + self.imageMargin;
            x = self.contentLeftMargin>0?self.contentLeftMargin + self.imageMargin + self.titleSize.width:centerx;
        }
    }
    return CGRectMake(x, y, self.imgSize.width, self.imgSize.height);
}

@end

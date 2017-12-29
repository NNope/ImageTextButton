# ImageTextButton
方便设置图片文字排列方式、间距的自定义按钮

<br>

![WX20171229-101233@2x.png](http://upload-images.jianshu.io/upload_images/810907-aa2c61a7c796afa8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


##  xib使用方式
![WX20171229-100823@2x.png](http://upload-images.jianshu.io/upload_images/810907-fcffe08f47d279d1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![WX20171229-100833@2x.png](http://upload-images.jianshu.io/upload_images/810907-95636a0a033066bc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
<br>
`imageType`为一个枚举，无法直接将属性设置配置到xib上，采用keypath手动添加的方式设置


<br><br><br>

##  代码使用方式
```
    ImageTextButton *btn = [ImageTextButton ITButtonWithTitle:@"账户管理" Image:@"acountS" ButtonImageType:ButtonImageTypeLeft];
    btn.contentLeftMargin = 40;
```

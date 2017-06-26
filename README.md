# CJLoadingDotView
可以自定义数量、颜色、大小、时间、间距的“点点loading图”

# cocoapods 
使用 pod 'CJLoadingDotView' 引入

![CJLoadingDotView.gif](https://github.com/CJProgrammer/CJLoadingDotView/blob/master/CJLoadingDotView.gif)

# 使用方法
let cjLoadingDotView = CJLoadingDotView()

// 点个数

cjLoadingDotView.dotNum = 5

// 点宽高

cjLoadingDotView.dotWH = 30

// 点与点之间的间距

cjLoadingDotView.margin = 10

// 颜色

cjLoadingDotView.dotColor = UIColor.magenta

// 循环时间

cjLoadingDotView.duration = 1

cjLoadingDotView.show(targetView:view)

DispatchQueue.main.asyncAfter(deadline:DispatchTime.now() + 10) {

    cjLoadingDotView.hide()

}


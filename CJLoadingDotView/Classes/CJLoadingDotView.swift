//
//  CJLoadingDotView.swift
//  CJLoadingDotView
//
//  Created by CJ on 2017/6/23.
//  Copyright © 2017年 CJ. All rights reserved.
//

import UIKit

open class CJLoadingDotView: UIView {

    // 点个数
    var dotNum:Int = 3
    // 点宽高
    var dotWH:CGFloat = 20
    // 点间距
    var margin:CGFloat = 10
    // 点颜色
    var dotColor:UIColor = UIColor.lightGray
    // 循环时间
    var duration:TimeInterval = 1
    
    // 显示在目标view上面
    func show(targetView:UIView) {
        
        targetView.addSubview(self)
        createDotViews(targetView: targetView)
    }
    // 隐藏
    func hide() {
        for view in self.subviews {
            view.removeFromSuperview()
        }
        self.removeFromSuperview()
    }
    
    // 创建显示视图
    fileprivate func createDotViews(targetView:UIView) {
        
        // 如果个数小于0返回
        guard dotNum > 0 else {
            return
        }
        
        // 获取第一个dot的x
        let startX = targetView.bounds.width / 2 - ((dotWH + margin) * CGFloat(dotNum) - margin) / 2
        
        // 创建dot
        for i in 0..<dotNum {
            
            // 加上延迟
            let time: TimeInterval = duration / TimeInterval(dotNum) * TimeInterval(i)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {
                
                let dotView = UIView.init(frame: CGRect.init(x: startX + (self.dotWH + self.margin) * CGFloat(i), y: targetView.bounds.height / 2 - self.dotWH / 2, width: self.dotWH, height: self.dotWH))
                dotView.backgroundColor = self.dotColor
                dotView.layer.cornerRadius = self.dotWH / 2
                dotView.clipsToBounds = true
                dotView.alpha = 0
                self.addSubview(dotView)
                
                // 添加动画
                let scaleAnimation = CABasicAnimation.init(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0
                scaleAnimation.toValue = 1
                
                let opacityAnimation = CABasicAnimation.init(keyPath: "opacity")
                opacityAnimation.fromValue = 0
                opacityAnimation.toValue = 1
                
                let groupAnimation = CAAnimationGroup()
                groupAnimation.isRemovedOnCompletion = false
                groupAnimation.duration = self.duration
                groupAnimation.repeatCount = MAXFLOAT
                groupAnimation.autoreverses = true
                groupAnimation.animations = [scaleAnimation,opacityAnimation]
                
                dotView.layer.add(groupAnimation, forKey: "scale,opacity")
            }
        }
    }
}












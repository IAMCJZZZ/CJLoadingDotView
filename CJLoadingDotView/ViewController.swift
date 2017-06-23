//
//  ViewController.swift
//  CJLoadingDotView
//
//  Created by CJ on 2017/6/23.
//  Copyright © 2017年 CJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let cjLoadingDotView = CJLoadingDotView()
        // 点个数
        cjLoadingDotView.dotNum = 5
        // 点宽高
        cjLoadingDotView.dotWH = 30
        // 点与点之间的间距
        cjLoadingDotView.margin = 10
        // 颜色
        cjLoadingDotView.dotColor = UIColor.red
        // 循环时间
        cjLoadingDotView.duration = 1
        
        cjLoadingDotView.show(targetView:view)
        
        DispatchQueue.main.asyncAfter(deadline:DispatchTime.now() + 10) {
            cjLoadingDotView.hide()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


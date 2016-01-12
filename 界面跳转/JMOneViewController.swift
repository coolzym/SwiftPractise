//
//  OneViewController.swift
//  JiSuanQi
//
//  Created by zhang min on 16/1/12.
//  Copyright © 2016年 zhang min. All rights reserved.
//

import UIKit

class JMOneViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let size : CGSize = UIScreen.mainScreen().bounds.size;
        
        let barButton : UIBarButtonItem = UIBarButtonItem(title: "按钮", style: UIBarButtonItemStyle.Done, target: self, action: Selector("barClick"));
        
        self.navigationItem.rightBarButtonItem = barButton;
        
        self.title = "第一页";
        
        self.view.backgroundColor = UIColor.whiteColor();
        
        let button : UIButton = UIButton(type: UIButtonType.Custom);
        
        button.setTitle("进入第二页", forState: UIControlState.Normal);
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal);
        
        button.titleLabel?.font = UIFont.systemFontOfSize(16);
        
        button.addTarget(self, action: Selector("click"), forControlEvents: UIControlEvents.TouchUpInside);
        
        button.frame = CGRectMake((size.width - 2 * 80) / 2, (size.height - 44) / 2, 100, 44);
        
        self.view.addSubview(button);
    }
    
    func click(){
        let two : JMTwoViewController = JMTwoViewController();
        
        self.navigationController?.pushViewController(two, animated: true);
    }
    
    func barClick(){
        print("哈1");
    }
    
}

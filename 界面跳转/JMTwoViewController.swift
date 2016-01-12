//
//  JMTwoViewController.swift
//  JiSuanQi
//
//  Created by zhang min on 16/1/12.
//  Copyright © 2016年 zhang min. All rights reserved.
//

import UIKit

class JMTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "第二页";
        
        self.view.backgroundColor = UIColor.whiteColor();
    
        let size : CGSize = UIScreen.mainScreen().bounds.size;
        
        
        let button : UIButton = UIButton(type: UIButtonType.Custom);
        
        button.setTitle("返回第一页", forState: UIControlState.Normal);
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal);
        
        button.titleLabel?.font = UIFont.systemFontOfSize(16);
        
        button.addTarget(self, action: Selector("click"), forControlEvents: UIControlEvents.TouchUpInside);
        
        button.frame = CGRectMake((size.width - 2 * 80) / 2, (size.height - 44) / 2, 100, 44);
        
        self.view.addSubview(button);
    }
    
    func click(){
        self.navigationController?.popViewControllerAnimated(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

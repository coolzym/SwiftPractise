//
//  ViewController.swift
//  JiSuanQi
//
//  Created by zhang min on 16/1/11.
//  Copyright © 2016年 zhang min. All rights reserved.
//

import UIKit

class GDViewController: UIViewController,MyScrollViewDelegate {

    var scrollView : GDMyScrollView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupScrollView();
    }
    
    //MARK:
    //MARK:设置scrollView
    /**
    设置scrollView
    */
    func setupScrollView(){
        
        scrollView = GDMyScrollView(frame: self.view.bounds);
        
        scrollView.myScrollViewDelegate = self;
        
        self.view.addSubview(scrollView);
    }

    func scrollViewEnterToken() {
        print("哈哈哈");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


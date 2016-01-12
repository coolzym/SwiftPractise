//
//  NewFeatureImageView.swift
//  JiSuanQi
//
//  Created by zhang min on 16/1/12.
//  Copyright © 2016年 zhang min. All rights reserved.
//

import UIKit

protocol NewFeatureImageViewDelegate : NSObjectProtocol{
    func enterToken();
}

class GDNewFeatureImageView: UIImageView {

    let size : CGSize = UIScreen.mainScreen().bounds.size;
    
    weak var delegate:NewFeatureImageViewDelegate!;

    
    override init(image: UIImage?) {
        super.init(image: image);
        
        self.userInteractionEnabled = true;
        
        setupButton();
    }

    func setupButton(){
        
        let button : UIButton = UIButton(type: UIButtonType.Custom);
        
        button.setTitle("登录", forState: UIControlState.Normal);
        
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        
        button.setBackgroundImage(UIImage(named: "new_feature_finish_button"), forState: UIControlState.Normal);
        
        button.setBackgroundImage(UIImage(named: "new_feature_finish_button_highlighted"), forState: UIControlState.Highlighted);
        
        button.frame = CGRectMake(0, 0, size.width - 2 * 40, 44);
        
        button.center = CGPointMake(size.width / 2, size.height - 200);
        
        button.addTarget(self, action: Selector("click"), forControlEvents: UIControlEvents.TouchUpInside);
        
        self.addSubview(button);
    }
    
    func click(){
        let canDo : Bool = delegate!.respondsToSelector(Selector("enterToken"));
        
        if(canDo){
            delegate?.enterToken();
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

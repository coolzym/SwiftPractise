//
//  MyScrollView.swift
//  JiSuanQi
//
//  Created by zhang min on 16/1/12.
//  Copyright © 2016年 zhang min. All rights reserved.
//

import UIKit

protocol MyScrollViewDelegate : NSObjectProtocol{
    func scrollViewEnterToken();
}

class GDMyScrollView: UIScrollView,NewFeatureImageViewDelegate {

    //图片数量
    let imageCount = 4;
    let size : CGSize = UIScreen.mainScreen().bounds.size;
    lazy var imageNameArray : Array<String> = self.setupArray(); /*!< 图片名称集合 */
    
    weak var myScrollViewDelegate:MyScrollViewDelegate!;
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        self.userInteractionEnabled = true;
        
        self.contentSize = CGSizeMake(size.width * CGFloat(imageCount), size.height);
        
        self.contentOffset = CGPointMake(0, 0);
        
        self.pagingEnabled = true;
        
        self.bounces = false;
        
        self.showsHorizontalScrollIndicator = false;
        
        setupImage();
    }
    
    func setupImage(){
        
        var i : Int = 0;
        
        for str in imageNameArray{
            let w : CGFloat = size.width;
            let h : CGFloat = size.height;
            let x : CGFloat = CGFloat(i) * w;
            let y : CGFloat = 0;
            
            if(i + 1 < imageCount){
                let imageView : UIImageView = UIImageView(frame: CGRectMake(x, y, w, h));
                
                imageView.image = UIImage(named: str);
                
                self.addSubview(imageView);
            }
            else{
                let imageView : GDNewFeatureImageView = GDNewFeatureImageView(image: UIImage(named: str));
                
                imageView.frame = CGRectMake(x, y, w, h);
                
                imageView.delegate = self;
                
                self.addSubview(imageView);
            }
            
            i++;
        }
    }
    
    func enterToken() {
        let canDo : Bool = myScrollViewDelegate.respondsToSelector(Selector("scrollViewEnterToken"));
        
        if(canDo){
            myScrollViewDelegate?.scrollViewEnterToken();
        }
    }
    
    func setupArray() -> Array<String> {
        
        var array : Array<String> = [];
        
        for index in 1...4 {
            
            let imageName = "new_feature_" + String(index);
            array.append(imageName);
        }
        
        return array;
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

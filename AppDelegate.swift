//
//  AppDelegate.swift
//  SwiftPractise
//
//  Created by zhang min on 16/1/12.
//  Copyright © 2016年 zhang min. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    enum viewControllerType : Int {
        case GDViewController //滚动图片(简单)
        case JMOneViewController //界面跳转
        case OneTableViewController //表格(简单)
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds);
        
        //替换viewControllerType就可以看其他的界面效果
        self.window?.rootViewController = vController(type: viewControllerType.OneTableViewController);
        
        self.window?.makeKeyAndVisible();
        
        return true
    }
    
    func vController(type type:viewControllerType) -> UIViewController {
        
        if(type == viewControllerType.GDViewController){
            let gd : GDViewController = GDViewController();
            
            return gd;
        }
        else if(type == viewControllerType.JMOneViewController){
            let gd : JMOneViewController = JMOneViewController();
            let nav : UINavigationController = UINavigationController(rootViewController: gd);
            
            return nav;
        }
        else if(type == viewControllerType.OneTableViewController){
            let gd : OneTableViewController = OneTableViewController();
            
            return gd;
        }
        
        return UIViewController();
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


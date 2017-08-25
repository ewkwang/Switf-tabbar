//
//  AppDelegate.swift
//  Switf2
//
//  Created by 睿隆 on 2017/8/21.
//  Copyright © 2017年 睿隆. All rights reserved.
// 上传

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        
        // 设置标签栏
        let vc1 = OneViewController()
        vc1.title = "视图1" // 标题
        vc1.tabBarItem.title = "视图1";
        //        vc1.tabBarItem.image = UIImage.init(named: "1") // 图片
        //        vc1.tabBarItem.selectedImage = UIImage.init(named: "") // 选中状态下的图片
        vc1.view.backgroundColor = UIColor.red
        let nav1 = UINavigationController.init(rootViewController: vc1)
        
        let vc2 = TwoViewController()
        vc2.title = "视图2"
        //        vc2.tabBarItem.image = UIImage.init(named: "2")
        //        vc2.tabBarItem.selectedImage = UIImage.init(named: "")
        vc2.view.backgroundColor = UIColor.orange
        let nav2 = UINavigationController.init(rootViewController: vc2)
        
        let vc3 = ThreeViewController()
        vc3.title = "视图3"
        //        vc3.tabBarItem.image = UIImage.init(named: "3")
        //        vc3.tabBarItem.selectedImage = UIImage.init(named: "")
        vc3.view.backgroundColor = UIColor.yellow
        let nav3 = UINavigationController.init(rootViewController: vc3)
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [nav1, nav2, nav3]
        
        
                // 属性设置
                // 设置默认被选中视图控制器
                tabbarController.selectedIndex = 0;
                // 设置切换视图 tabBar 属性
                // 1 打开用户交互
                tabbarController.tabBar.isUserInteractionEnabled = true;
                // 2 设置背景颜色
                tabbarController.tabBar.backgroundColor = UIColor.white
                // 3 设置背景图片
                tabbarController.tabBar.backgroundImage = UIImage(named: "")
                // 4 选中时的背景图片
                tabbarController.tabBar.selectionIndicatorImage = UIImage(named:"")
        
                // 设置字体颜色
                UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.white], for: UIControlState.normal)
                UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.red], for: UIControlState.selected) // 选中状态
        
                // 设置字体大小
                UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 12.0)], for: UIControlState.normal)
        
        
                // 设置字体偏移
                UITabBarItem.appearance().titlePositionAdjustment = UIOffsetMake(0.0, -5.0)
                
                // 设置图标选中时颜色
                UITabBar.appearance().tintColor = UIColor.orange
        

        self.window?.rootViewController = tabbarController
        

      
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


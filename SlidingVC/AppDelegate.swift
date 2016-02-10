//
//  AppDelegate.swift
//  SlidingVC
//
//  Created by Jeffrey Camealy on 2/9/16.
//  Copyright © 2016 Jeffrey Camealy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //MARK: - AppDelegate Method
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        setupWindow()
        setupRootVC()
        return true
    }
    
    //MARK: - Private
    func setupWindow() {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
    }
    
    func setupRootVC() {
        let frontVC = SampleFrontViewController()
        let backVC = SampleBackViewController()
        let slidingContainerVC = SlidingContainerViewController(frontViewController: frontVC,
                                                                 backViewController: backVC)
        window?.rootViewController = slidingContainerVC
    }

}


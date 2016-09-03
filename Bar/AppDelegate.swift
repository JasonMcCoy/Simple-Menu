//
//  AppDelegate.swift
//  Bar
//
//  Created by Jason McCoy on 09/02/16.
//  Copyright © 2015 Jason McCoy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {

	// MARK: - Properties

	var window: UIWindow? = {
		let window = UIWindow()
		window.tintColor = UIColor(red: 0.8, green: 0.271, blue: 0.216, alpha: 1)

//		let splitViewController = UISplitViewController()
//		splitViewController.viewControllers = [
//			UINavigationController(rootViewController: UIViewController()),
//			UINavigationController(rootViewController: UIViewController())
//		]
//		window.rootViewController = splitViewController

		window.rootViewController = UINavigationController(rootViewController: MenuViewController())
		return window
	}()
}


extension AppDelegate: UIApplicationDelegate {
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		application.idleTimerDisabled = true
		window?.makeKeyAndVisible()
		return true
	}

	func applicationDidBecomeActive(application: UIApplication) {
		application.idleTimerDisabled = true
	}
}

//
//  AppDelegate.swift
//  SwiftUITabBarController
//
//  Created by sehwa kim on 2021/03/14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


  internal var window: UIWindow?
  
  private var myTabBarController: UITabBarController!
  /*
   アプリケーション起動時に呼ばれるメソッド.
   */

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    
    // Tabに設定するViewControllerのインスタンスを生成.
    let myFirstTab: UIViewController = FirstViewController()
    let mySecondTab: UIViewController = SecondViewController()
    
    // タブを要素に持つArrayの.を作成する.
    let myTabs = NSArray(objects: myFirstTab, mySecondTab)
    //let mySecondTab: UIViewController = SecondViewController()
    
    // UITabControllerの作成する.
    
    myTabBarController = UITabBarController()
    // ViewControllerを設定する.
    
    myTabBarController?.setViewControllers(myTabs as? [UIViewController], animated: false)
    
    // RootViewControllerに設定する.
    
    self.window!.rootViewController = myTabBarController
    
    self.window!.makeKeyAndVisible()
    

    
    // Override point for customization after application launch.
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}


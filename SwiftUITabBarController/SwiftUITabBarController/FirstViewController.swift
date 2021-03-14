//
//  FirstViewController.swift
//  SwiftUITabBarController
//
//  Created by sehwa kim on 2021/03/14.
//

import UIKit

class FirstViewController: UIViewController {
  init(){
    
    super.init(nibName: nil, bundle: nil)
    // Viewの背景色をCyanに設定する.
    super.view.backgroundColor = UIColor.cyan
    
    //tabBarItemのアイコンをFeaturedに、タグを1と定義する.
    self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.featured, tag: 1)
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
    
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
  }
  
  
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
  }
  
  
  
  override func didReceiveMemoryWarning() {
    
    super.didReceiveMemoryWarning()
    
  }
  
}

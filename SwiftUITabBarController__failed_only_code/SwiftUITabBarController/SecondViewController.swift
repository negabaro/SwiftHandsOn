import UIKit



class SecondViewController: UIViewController {
  
  
  
  init() {
    
    super.init(nibName: nil, bundle: nil)
    
    
    
    // Viewの背景色をGreenに設定する.
    
    self.view.backgroundColor = UIColor.green
    
    
    
    // tabBarItemのアイコンをFeaturedに、タグを2と定義する.
    
    self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.featured, tag: 2)
    
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


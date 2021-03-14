//
//  ViewController.swift
//  SwiftTransitionWayViewCallDiffrentView
//
//  Created by sehwa kim on 2021/03/13.
//

import UIKit

class SecondViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("row: SecondViewController")
    // Do any additional setup after loading the view.
  }
  
  @IBAction func back(_ sender: Any){
    self.presentingViewController?.dismiss(animated: true)
    
  }
  
  
}


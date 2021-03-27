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
    
    //print("row: SecondViewController")
    // Do any additional setup after loading the view.
  }
    
  @IBAction func backButton(_ sender: Any) {
    //back Button押すとエラー
    //Exception NSException * "-[UIViewController backButton:]: unrecognized selector sent to instance
    self.presentingViewController?.dismiss(animated: true)
    print("back button")
    
    

  }
  
  @IBAction func back(_ sender: Any) {
    print("back button2")
    self.presentingViewController?.dismiss(animated: true)
  }
  
}


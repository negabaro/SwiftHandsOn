//
//  ViewController.swift
//  SwiftTransitionWayViewCallDiffrentView
//
//  Created by sehwa kim on 2021/03/13.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    print("row: ViewController")
    // Do any additional setup after loading the view.
  }
  


  @IBAction func nextPage(_ sender: Any) {
    guard let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") else {
      return
    }
    
    uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
    
    self.present(uvc, animated: true)
  }
  
}


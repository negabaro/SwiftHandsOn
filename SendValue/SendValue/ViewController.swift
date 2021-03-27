//
//  ViewController.swift
//  SendValue
//
//  Created by sehwa kim on 2021/03/24.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var updateText: UILabel!
  @IBOutlet weak var countNumber: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  

  @IBAction func onSwitch(_ sender: UISwitch) {
    if (sender.isOn == true) {
      self.updateText.text = "갱신"
      
    }else {
      self.updateText.text = "갱신하지 않음"
      
    }
  }
  
  
  @IBAction func onStepper(_ sender: UIStepper) {
    let value = Int(sender.value)
    self.countNumber.text = "\(value)마다."
  }
  
  
  @IBAction func submitButton(_ sender: Any) {
    guard let vc2 = self.storyboard?.instantiateViewController(identifier: "SecondView") as? SecondViewController else {
      return
    }
    
    
    
  }
  
}


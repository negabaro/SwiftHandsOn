//
//  ViewController.swift
//  SwiftTestUIPickerView
//
//  Created by sehwa kim on 2021/03/11.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
  /*
   
   pickerに表示する列数を返すデータソースメソッド.
   
   (実装必須)
   
   */
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  /*
   
   pickerに表示する行数を返すデータソースメソッド.
   
   (実装必須)
   
   */
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return myValues.count
  }
  
  /*
   
   pickerに表示する値を返すデリゲートメソッド.
   
   */
  
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return myValues[row] as? String
  }
  
  /*
   pickerが選択された際に呼ばれるデリゲートメソッド.
   */
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    print("row: \(row)")
    print("value: \(myValues[row])")
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  // UIPickerView.
  private var myUIPicker: UIPickerView!
  
  // 表示する値の配列.
  private let myValues: NSArray = ["사나","모모","다현","채영"]
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    myUIPicker = UIPickerView()
    // サイズを指定する.
    
    //myUIPicker.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
    myUIPicker.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 180.0)
    
    
    
    // Delegateを設定する.
    
    myUIPicker.delegate = self
    
    
    
    // DataSourceを設定する.
    
    myUIPicker.dataSource = self
    
    
    
    // Viewに追加する.
    
    self.view.addSubview(myUIPicker)
  }
  
  
}


//
//  ViewController.swift
//  WebView
//
//  Created by sehwa kim on 2021/03/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

  @IBOutlet weak var WebViewMain: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    //1. url string
    //2. url -> request
    //3. req -> load
    let urlString22 = "https://google.com"
    if let url = URL(string: urlString22){ //unwrap
      let urlReq = URLRequest(url: url);
      WebViewMain.load(urlReq)
    }
    
    
    
    
  }
  

  

  
  
  


}


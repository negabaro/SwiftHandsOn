//
//  ViewController.swift
//  SearchWebView
//
//  Created by sehwa kim on 2021/03/27.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, UISearchBarDelegate {

  @IBOutlet weak var webView: WKWebView!
  @IBOutlet weak var searchBar: UISearchBar!
  @IBOutlet weak var backButton: UIBarButtonItem!
  @IBOutlet weak var reloadButton: UIBarButtonItem!
  @IBOutlet weak var stopButton: UIBarButtonItem!
  
  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  
  let homeUrl = "https://negabaro.github.io"
  let searchUrl = "https://www.google.co.jp/search?q="
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    //홈페이지 열기
    openUrl(urlString: homeUrl)
    //webView.navigationDelegate = self
  }
  
  func openUrl(urlString: String){
    let url = URL(string: urlString)
    let request = NSURLRequest(url: url!)
    webView.load(request as URLRequest)
  }
  
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    print("searchButton Clicked")
    if let searchText = searchBar.text {
      let url = searchUrl + searchText.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
      
      openUrl(urlString: url)
      searchBar.resignFirstResponder()
    }
  }
  
  func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
    print("webview start")
  }
  
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    print("webview end")
  }
  
  

  @IBAction func backButtonTapped(_ sender: Any) {
    webView.goBack()
  }
  
  @IBAction func reloadButtonTapped(_ sender: Any) {
    webView.reload()
  }
  
  
  @IBAction func stopButtonTapped(_ sender: Any) {
    webView.stopLoading()
  }
  
}


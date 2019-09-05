//
//  ViewController.swift
//  WebView03
//
//  Created by D7702_09 on 2019. 9. 5..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,UISearchDisplayDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = URLRequest(url: URL(string: "http://www.naver.com")!)
        webView.load(request)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func backAction(_ sender: Any) {
        if self.webView.canGoBack{
            self.webView.goBack()
        }
    }
    
    @IBAction func forwardAction(_ sender: Any) {
        if self.webView.canGoForward{
            self.webView.goForward()
        }
    }
    func searchBarSearchButtonClicked(_searchBar: UISearchBar){
        let inputURL = searchBar.text!
        let request = URLRequest(url:URL(string: inputURL)!)
        webView.load(request)
        self.view.endEditing(true)
    }
}


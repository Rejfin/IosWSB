//
//  ViewController.swift
//  WebViewController
//
//  Created by Student G225 07 on 14/03/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.wp.pl")
        let request = URLRequest(url: url!)
        webView.load(request)
    }

}


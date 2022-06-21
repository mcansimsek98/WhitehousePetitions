//
//  DetailViewController.swift
//  Project7
//
//  Created by Mehmet Can Şimşek on 20.06.2022.
//

import UIKit
import WebKit

class DetailViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem = detailItem else {
            return
        }
        
        let html = """
<html>
<head>
<meta name="viewport" content="device-width, inital-scale=1">
<style> body { font-size: 180%; } </style>
</head>
<body>
<h1>\(detailItem.title)</h1>
<br>
\(detailItem.body)
</body>
</html>
"""
        webView.loadHTMLString(html, baseURL: nil)
        
    }
    

   

}

//
//  WebViewController.swift
//  A202012025
//
//  Created by 소프트웨어컴퓨터 on 2023/12/05.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var txtURL: UITextField!
    var urlText: String?
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func connectWeb(_ sender: UIButton) {
        urlText = txtURL.text
        if let urlText {
            print(urlText)
            let myURL = URL(string:"https://"+urlText)
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

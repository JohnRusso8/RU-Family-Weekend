//
//  TicketsViewController.swift
//  RU Family Weekend
//
//  Created by John Russo on 4/22/21.
//

import UIKit
import WebKit

class TicketsViewController: UIViewController,WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
     webView = WKWebView()
     webView.navigationDelegate = self
     view = webView
     }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://secure.visualzen.com/vzfamilyweekend/rowan")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

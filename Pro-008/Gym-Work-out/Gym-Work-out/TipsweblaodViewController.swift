//
//  TipsweblaodViewController.swift
//  Gym-Work-out
//
//  Created by Maleesha Wijeratne on 18/05/2023.
//

import UIKit
import WebKit

class TipsweblaodViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView = WKWebView(frame: view.bounds)
            view.addSubview(webView)
            
            let url = URL(string: "https://pamux.github.io/GYM-WEB/")!
            let request = URLRequest(url: url)
            webView.load(request)
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

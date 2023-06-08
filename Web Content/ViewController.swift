//
//  ViewController.swift
//  Web Content
//
//  Created by Jakub Sukiennim on 08/06/2023.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
       let url = URL(string: "https://stackoverflow.com/questions")!
        let task = URLSession.shared.dataTask(with: url)
        { (data, response, error) in
            if error == nil
            {
                
                
                
                let urlContent = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                print(urlContent)
                self.webview.loadHTMLString(urlContent! as String, baseURL: url)
            }
            
        }
        task.resume()
    }


}


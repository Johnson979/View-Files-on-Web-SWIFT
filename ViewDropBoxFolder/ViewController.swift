//
//  ViewController.swift
//  ViewDropBoxFolder
//
//  Created by Charles Konkol on 4/6/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnBack(sender: AnyObject) {
        webview.goBack()
    }
    
    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadwebview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadwebview()
    {
        let url = NSURL(string: "http://rvcsecurity.site44.com/")
        let request = NSURLRequest(URL: url!)
        webview.scalesPageToFit = true
        webview.loadRequest(request)

    }
}


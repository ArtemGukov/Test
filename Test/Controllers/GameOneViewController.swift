//
//  GameViewController.swift
//  Test
//
//  Created by Артем on 05/03/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class GameOneViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadHtmlGame()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        appDelegate.deviceOrientation = .landscape
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    func loadHtmlGame() {
        
        let localGame = Bundle.main.url(forResource: "game1/index", withExtension:"html")
        let request = NSURLRequest(url: localGame!)
        webView.loadRequest(request as URLRequest)
    }
}

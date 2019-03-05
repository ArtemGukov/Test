//
//  GameTwoViewController.swift
//  Test
//
//  Created by Артем on 06/03/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class GameTwoViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadHtmlGame()
    }
    
    func loadHtmlGame() {
        
        let localGame = Bundle.main.url(forResource: "game2/index", withExtension:"html")
        let request = NSURLRequest(url: localGame!)
        webView.loadRequest(request as URLRequest)
        
    }
}

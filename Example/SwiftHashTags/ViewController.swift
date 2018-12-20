//
//  ViewController.swift
//  SwiftHashTags
//
//  Created by hcasc on 12/19/2018.
//  Copyright (c) 2018 hcasc. All rights reserved.
//

import UIKit
import SwiftHashTags

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHashTags()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//MARK: - Set up SwiftHashTag view
extension ViewController {
    fileprivate func setupHashTags() {
        var hashtags: [SwiftHashTags] = []
        
        //MARK: - Set hashtags
        for i in 0..<100 {
            let hashtag = SwiftHashTags(title: "title " + String(i), id: i)
            hashtags.append(hashtag)
        }
        
        let swifthashtags = SwiftHashTagsView()
        swifthashtags.frame = CGRect(x: 10, y: 20, width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 20)
        swifthashtags.hashtaglist = hashtags
        swifthashtags.setButtons()
        view.addSubview(swifthashtags)
        swifthashtags.swifthashtagDelegate = self
    }
}

//MARK - SwiftHashTag delegate methods
extension ViewController: SwifthashtagDelegate {
    func selectedHashTag(title: String, id: Int) {
        print(title)
    }
    
    func unselectedHashTag(title: String, id: Int) {
        print(title)
    }
}


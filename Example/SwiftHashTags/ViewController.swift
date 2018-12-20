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
        let hashtag1 = SwiftHashTags(title: "hashtagone", id: 99)
        let hashtag2 = SwiftHashTags(title: "swifthashtag", id: 12)
        let hashtag3 = SwiftHashTags(title: "Sri Lanka", id: 111)
        let hashtag4 = SwiftHashTags(title: "Canada", id: 98)
        let hashtag5 = SwiftHashTags(title: "USA", id: 21)
        let hashtag6 = SwiftHashTags(title: "Cryptography", id: 99)
        let hashtag7 = SwiftHashTags(title: "GoLang", id: 99)
        let hashtag8 = SwiftHashTags(title: "Swift", id: 99)
        let hashtag9 = SwiftHashTags(title: "iOS", id: 99)
        let hashtag10 = SwiftHashTags(title: "MongoDB", id: 99)
        let hashtag11 = SwiftHashTags(title: "NodeJS", id: 99)
        let hashtag12 = SwiftHashTags(title: "AWS", id: 99)
        let hashtag13 = SwiftHashTags(title: "Java", id: 99)
        let hashtag14 = SwiftHashTags(title: "UI", id: 99)
        let hashtag15 = SwiftHashTags(title: "Security", id: 99)
        
        hashtags.append(hashtag1)
        hashtags.append(hashtag2)
        hashtags.append(hashtag3)
        hashtags.append(hashtag4)
        hashtags.append(hashtag5)
        hashtags.append(hashtag6)
        hashtags.append(hashtag7)
        hashtags.append(hashtag8)
        hashtags.append(hashtag9)
        hashtags.append(hashtag10)
        hashtags.append(hashtag11)
        hashtags.append(hashtag12)
        hashtags.append(hashtag13)
        hashtags.append(hashtag14)
        hashtags.append(hashtag15)
       
        let swifthashtags = SwiftHashTagsView()
        swifthashtags.frame = CGRect(x: 10, y: 20, width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 20)
        swifthashtags.hashtaglist = hashtags
        swifthashtags.showverticalScoller = true
        swifthashtags.setHashTags()
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


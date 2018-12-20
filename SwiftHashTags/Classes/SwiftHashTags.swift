//
//  SwiftHashTags.swift
//  SwiftHashTags
//
//  Created by Anuradh Caldera on 12/19/18.
//

import Foundation

public struct SwiftHashTags: Codable {
    let title: String
    let id: Int
    
    public init(title: String, id: Int) {
        self.title = title
        self.id = id
    }
}

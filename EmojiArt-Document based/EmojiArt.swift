//
//  EmojiArt.swift
//  Swift-EmojiArt
//
//  Created by wry on 2018/11/26.
//  Copyright © 2018年 jiacheng. All rights reserved.
//

import Foundation

// make the model codable (transfer into json format)
struct EmojiArt: Codable {
    var url: URL?
    var imageData: Data?
    var emojis = [EmojiInfo]()
    
    struct EmojiInfo: Codable {
        let x: Int
        let y: Int
        let text: String
        let size: Int
    }
    
    init?(json: Data){
        if let newValue = try? JSONDecoder().decode(EmojiArt.self, from: json) {
            self = newValue
        } else {
            return nil
        }
    }

    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init(url: URL, emojis: [EmojiInfo]) {
        self.url = url
        self.emojis = emojis
    }
    
    init(imageData: Data, emojis: [EmojiInfo]) {
        self.imageData = imageData
        self.emojis = emojis
    }
}

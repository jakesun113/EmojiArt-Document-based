//
//  DocumentInfoViewController.swift
//  EmojiArt-Document based
//
//  Created by wry on 2018/11/27.
//  Copyright © 2018年 jiacheng. All rights reserved.
//

import UIKit

class DocumentInfoViewController: UIViewController {


    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var sizeLabel: UILabel!
    
    @IBOutlet weak var createdLabel: UILabel!
    
    @IBAction func done() {
        //dissmiss self
        presentingViewController?.dismiss(animated: true)
    }
}

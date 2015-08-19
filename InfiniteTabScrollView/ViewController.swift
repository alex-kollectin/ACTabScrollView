//
//  ViewController.swift
//  InfiniteTabScrollView
//
//  Created by AzureChen on 2015/8/19.
//  Copyright (c) 2015年 AzureChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var infiniteTabScrollView: InfiniteTabScrollView!
    
    var pages = [Page]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var infiniteTabScrollView = InfiniteTabScrollView.instanceFromNib()
        infiniteTabScrollView.frame = self.view.frame
        
        self.view.addSubview(infiniteTabScrollView)

        var tabViewSize = CGSize(width: 60, height: 60)
        var contentViewSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height - 60)
        for (var i = 0; i < 3; i++) {
            var tabView = UIView(frame: CGRect(x: 0, y: 0, width: tabViewSize.width, height: tabViewSize.height))
            var contentView = UIView(frame: CGRect(x: 0, y: 0, width: contentViewSize.width, height: contentViewSize.height))
            
            switch (i) {
            case 0:
                tabView.backgroundColor = UIColor.redColor()
                contentView.backgroundColor = UIColor.redColor()
            case 1:
                tabView.backgroundColor = UIColor.greenColor()
                contentView.backgroundColor = UIColor.greenColor()
            case 2:
                tabView.backgroundColor = UIColor.blueColor()
                contentView.backgroundColor = UIColor.blueColor()
            default:
                break
            }
            
            
            var page = Page(tabView: tabView, contentView: contentView)
            pages.append(page)
        }
        infiniteTabScrollView.pages = self.pages
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


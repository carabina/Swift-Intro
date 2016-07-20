//
//  ViewController.swift
//  AutoLayout
//
//  Created by Sidharth Sankh on 18/07/16.
//  Copyright © 2016 cliffex. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {

    @IBOutlet var uiView: UIView!
    @IBOutlet weak var titleLableView: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var containtView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var backImageView: UIImageView!
    
    var isDrawOpen : Bool!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLableView.alpha = 0
        subTitleLabel.alpha = 0
        orangeView.backgroundColor = UIColor.clearColor()
        
        orangeView.translatesAutoresizingMaskIntoConstraints = true
        containtView.translatesAutoresizingMaskIntoConstraints = true
        //uiView.translatesAutoresizingMaskIntoConstraints = true
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = true
        titleLableView.translatesAutoresizingMaskIntoConstraints = true
        backImageView.translatesAutoresizingMaskIntoConstraints = true
        
        // setting UIViews position
        
        orangeView.frame = CGRectMake(0, self.uiView.frame.height - 50, self.uiView.frame.width, self.orangeView.frame.height)
        containtView.frame = CGRectMake(0, 0, self.uiView.frame.width, self.uiView.frame.height - 52)
        backImageView.frame = CGRectMake(0, 0, self.containtView.frame.width, self.containtView.frame.height)
        titleLableView.center = CGPoint(x: self.containtView.frame.width/2, y: self.containtView.frame.height/2)
        subTitleLabel.center = CGPoint(x: self.containtView.frame.width/2, y: self.containtView.frame.height/2 + self.titleLableView.frame.height)
        
        
        
        // create UIButtons
        
        let fButton = UIButton( type: .System )
        fButton.frame = CGRectMake(0, 52, self.orangeView.frame.size.width, 60)
        fButton.backgroundColor = UIColor.init(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        fButton.setTitle("Sign in with facebook", forState: .Normal)
        fButton.titleLabel!.font = UIFont(name: "Arial", size: 14)
        fButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        fButton.setTitleColor(UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5), forState: .Highlighted)
        fButton.setTitleColor(UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), forState: .Selected)
        self.orangeView.addSubview(fButton)

        
        let tButton = UIButton()
        tButton.frame = CGRectMake(0, 114, self.orangeView.frame.size.width, 60)
        tButton.backgroundColor = UIColor.init(red: 64/255, green: 153/255, blue: 255/255, alpha: 1)
        tButton.setTitle("Sign in with twitter", forState: .Normal)
        tButton.titleLabel!.font = UIFont(name: "Arial", size: 14)
        tButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        tButton.setTitleColor(UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5), forState: .Highlighted)
        tButton.setTitleColor(UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), forState: .Selected)
        self.orangeView.addSubview(tButton)
        
    }
    
    
    @IBAction func signInButton(sender: AnyObject) {
        
        if isDrawOpen != true {
            
            UIView.animateWithDuration(0.2, animations: {
                self.signInButton.setTitle("Skip it.", forState: .Normal)
                self.signInButton.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 0)
                self.signInButton.setTitleColor(UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), forState: .Normal)
                self.backImageView.alpha = 0.3
                self.self.orangeView.frame = CGRectMake(0, self.uiView.frame.height - (self.orangeView.frame.height), self.uiView.frame.width, self.orangeView.frame.height)
                self.containtView.frame = CGRectMake(0, 0, self.uiView.frame.width, self.uiView.frame.height - (self.orangeView.frame.height - 50))
                self.backImageView.frame = CGRectMake(0, 0, self.uiView.frame.width, self.uiView.frame.height - (self.orangeView.frame.height - 50))
                self.titleLableView.center = CGPoint(x: self.containtView.frame.width/2, y: self.containtView.frame.height/2)
                self.subTitleLabel.center = CGPoint(x: self.containtView.frame.width/2, y: self.containtView.frame.height/2 + self.titleLableView.frame.height)
                
                
            })
        isDrawOpen = true
            
            
        } else if isDrawOpen != false{
            
            UIView.animateWithDuration(0.2, animations: {
                self.self.orangeView.frame = CGRectMake(0, self.uiView.frame.height - 50, self.uiView.frame.width, self.orangeView.frame.height)
                self.containtView.frame = CGRectMake(0, 0, self.uiView.frame.width, self.uiView.frame.height - 52)
                self.backImageView.frame = CGRectMake(0, 0, self.uiView.frame.width, self.uiView.frame.height - 52)
                self.titleLableView.center = CGPoint(x: self.containtView.frame.width/2, y: self.containtView.frame.height/2)
                self.subTitleLabel.center = CGPoint(x: self.containtView.frame.width/2, y: self.containtView.frame.height/2 + self.titleLableView.frame.height)
                self.backImageView.alpha = 1
                self.signInButton.setTitle("Sign in", forState: .Normal)
                self.signInButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
                self.signInButton.backgroundColor = UIColor.init(red: 255/255, green: 94/255, blue: 37/255, alpha: 1)
            })
        isDrawOpen = false
        
        }

    }
    
    override func viewWillAppear(animated: Bool) {
        UIView.animateWithDuration(0.8, animations: {
            
            self.titleLableView.alpha = 1
            self.subTitleLabel.alpha = 1
            
        })
        
    }
    
}

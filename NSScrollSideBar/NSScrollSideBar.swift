//
//  NSScrollSideBar.swift
//  NSScrollSideBar
//
//  Created by 徐恒一 on 2019/3/13.
//  Copyright © 2019 徐恒一. All rights reserved.
//

import Foundation
import Cocoa

class NSScrollSideBar: NSBox {
    @IBInspectable open var animTime: CGFloat = 0.3
    @IBInspectable open var width: CGFloat = 100.0
    @IBInspectable open var height: CGFloat = 100.0
    @IBInspectable open var buttonX: CGFloat = 20.0
    @IBInspectable open var buttonY: CGFloat = 20.0
    @IBInspectable open var buttonWidth: CGFloat = 30.0
    @IBInspectable open var buttonHeight: CGFloat = 30.0
    @IBInspectable open var buttonImage: NSImage?
    
    var menuTimer: Timer?
    var closeButton: NSButton = NSButton()
    
    override open func awakeFromNib() {
        self.isHidden = true
        closeButton.isBordered = false
        self.frame = NSRect(x: 0, y: 0, width: width, height: height)
        closeButton.frame = NSRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight)
        if buttonImage != nil {
            closeButton.image = buttonImage
        }
        self.addSubview(closeButton)
        NSEvent.addLocalMonitorForEvents(matching: NSEvent.EventTypeMask.leftMouseDown) { (event) -> NSEvent? in
            if self.closeButton.frame.contains(event.locationInWindow) {
                self.clickBackButton()
            }
            return event
        }
    }
    
    func clickOpenButton() {
        guard self.isHidden else {
            return
        }
        self.isHidden = false
        
        let openAnim = CABasicAnimation(keyPath: "transform.scale.x")
        openAnim.fromValue = 0
        openAnim.toValue = 1
        openAnim.beginTime = 0
        openAnim.duration = CFTimeInterval(animTime)
        
        let opacity = CABasicAnimation(keyPath: "opacity")
        opacity.fromValue = 0
        opacity.toValue = 1
        opacity.beginTime = 0
        opacity.duration = CFTimeInterval(animTime)
        
        let boxGroup = CAAnimationGroup()
        boxGroup.animations = [openAnim, opacity]
        boxGroup.duration = CFTimeInterval(animTime)
        self.layer?.add(boxGroup, forKey: nil)
    }
    
    func clickBackButton() {
        guard !self.isHidden && menuTimer == nil else {
            return
        }
        
        let closeAnim = CABasicAnimation(keyPath: "transform.scale.x")
        closeAnim.fromValue = 1
        closeAnim.toValue = 0
        closeAnim.beginTime = 0
        closeAnim.duration = CFTimeInterval(animTime)
        
        let opacity = CABasicAnimation(keyPath: "opacity")
        opacity.fromValue = 1
        opacity.toValue = 0
        opacity.beginTime = 0
        opacity.duration = CFTimeInterval(animTime)
        
        let boxGroup = CAAnimationGroup()
        boxGroup.animations = [closeAnim, opacity]
        boxGroup.duration = CFTimeInterval(animTime)
        self.layer?.add(boxGroup, forKey: nil)
        menuTimer = Timer.scheduledTimer(timeInterval: TimeInterval(animTime), target: self, selector: #selector(initTimer), userInfo: nil, repeats: true)
    }
    
    @objc func initTimer(_ render: Any) {
        self.isHidden = true
        menuTimer?.invalidate()
        menuTimer = nil
    }
}

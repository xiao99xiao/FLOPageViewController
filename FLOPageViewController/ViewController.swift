//
//  ViewController.swift
//  FLOPageViewController
//
//  Created by Florian Schliep on 19.01.16.
//  Copyright © 2016 Florian Schliep. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    private weak var pageViewController: FLOPageViewController?
    
// MARK: - NSViewController
    
    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        
        guard let pageViewController = segue.destinationController as? FLOPageViewController else { return }
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        pageViewController.loadViewControllersFromStoryboard(storyboard, identifiers: ["1", "2", "3"])
        self.pageViewController = pageViewController
    }
    
// MARK: - Page View Controller Settings
    
    @IBAction func didChangePageControlState(sender: NSButton) {
        self.pageViewController?.showPageControl = (sender.state == NSOnState)
    }
    
    @IBAction func didChangeArrowControlState(sender: NSButton) {
        self.pageViewController?.showArrowControls = (sender.state == NSOnState)
    }
    
    @IBAction func didChangePageControlMouseOverState(sender: NSButton) {
        self.pageViewController?.pageControlRequiresMouseOver = (sender.state == NSOnState)
    }
    
    @IBAction func didChangeArrowControlsMouseOverState(sender: NSButton) {
        self.pageViewController?.arrowControlsRequireMouseOver = (sender.state == NSOnState)
    }
    
    @IBAction func didChangeOverlayState(sender: NSButton) {
        self.pageViewController?.overlayControls = (sender.state == NSOnState)
    }
    
    @IBAction func didSelectTintColor(sender: NSColorWell) {
        self.pageViewController?.tintColor = sender.color
    }
    
    @IBAction func didChangeCircleIndicatorState(sender: NSButton) {
        self.pageViewController?.pageIndicatorStyle = (sender.state == NSOnState) ? .Circle : .Dot
    }
    
    @IBAction func didSelectBackgroundColor(sender: NSColorWell) {
        self.pageViewController?.backgroundColor = sender.color
    }
    
}

//
//  ViewController.swift
//  DDProgressIndicator
//
//  Created by Donny Davis on 08/14/2016.
//  Copyright (c) 2016 Donny Davis. All rights reserved.
//

import UIKit
import DDProgressIndicator

class ViewController: UIViewController, DDProgressIndicatorDelegate {
    
    // Create our reference to the DDProgressIndicatorView class to display the activity indicator
    lazy var ddProgressIndicatorView: DDProgressIndicatorView = {
        var ddProgressIndicatorView = DDProgressIndicatorView(frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height))
        ddProgressIndicatorView.delegate = self
        return ddProgressIndicatorView
    }()
    
    // Create a timer to call the delegate methods
    var timer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startActivityButtonTapped(sender: UIButton) {
        ddProgressStartActivity()
        timer = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(stopActivity), userInfo: nil, repeats: false)
    }
    
    func stopActivity() {
        ddProgressStopActivity()
    }
    
    // Delegate methods
    
    // Uncomment this method to modify the color of the activity spinner
//    func ddProgressIndicatorSetSpinnerColor() -> UIColor? {
//        return UIColor.blueColor()
//    }
    
    // Uncomment this method to modify the color of the label displayed below
    // the activity spinner
//    func ddProgressIndicatorSetLabelColor() -> UIColor? {
//        return UIColor.redColor()
//    }
    
    // Uncomment this method to modify the background of the view containing
    // the activity spinner and label
//    func ddProgressIndicatorSetBackgroundColor() -> UIColor? {
//        return UIColor.purpleColor()
//    }

}


//
//  DDProgressIndicatorDelegate.swift
//  Pods
//
//  Created by Donny Davis on 8/14/16.
//
//

import UIKit

public protocol DDProgressIndicatorDelegate: class {
    // Property to create a reference for the DDProgressIndicatorView class.
    // Used by the delegate methods to show and hide the activity indicator view.
    var ddProgressIndicatorView: DDProgressIndicatorView {get set}
    
    // Display the view and start the activity indicator
    func ddProgressStartActivity()
    // Remove the view and stop the activity indicator
    func ddProgressStopActivity()
    
    // Modify the color of the activity spinner.
    func ddProgressIndicatorSetSpinnerColor() -> UIColor?
    
    // Modify the color of the loading label text.
    func ddProgressIndicatorSetLabelColor() -> UIColor?
    
    // Modify the background color of the view containing the activity spinner.
    func ddProgressIndicatorSetBackgroundColor() -> UIColor?
}

public extension DDProgressIndicatorDelegate where Self: UIViewController {
    
    func ddProgressStartActivity() {
        view.addSubview(ddProgressIndicatorView)
        ddProgressIndicatorView.start()
    }
    
    func ddProgressStopActivity() {
        ddProgressIndicatorView.stop()
        ddProgressIndicatorView.removeFromSuperview()
    }
    
    func ddProgressIndicatorSetSpinnerColor() -> UIColor? {
        return nil
    }
    
    func ddProgressIndicatorSetLabelColor() -> UIColor? {
        return nil
    }
    
    func ddProgressIndicatorSetBackgroundColor() -> UIColor? {
        return nil
    }
    
}

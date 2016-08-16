//
//  DDProgressIndicatorView.swift
//  Pods
//
//  Created by Donny Davis on 8/14/16.
//
//

import UIKit

public class DDProgressIndicatorView: UIView {
    
    // MARK: Properties
    public weak var delegate: DDProgressIndicatorDelegate?
    
    private var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    private lazy var wrapperView: UIVisualEffectView = {
        let wrapperView = UIVisualEffectView()
        wrapperView.effect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        wrapperView.backgroundColor = UIColor.lightGrayColor().colorWithAlphaComponent(0.5)
        wrapperView.layer.cornerRadius = 10.0
        wrapperView.layer.masksToBounds = true
        wrapperView.translatesAutoresizingMaskIntoConstraints = false
        return wrapperView
    }()
    
    private var loadingLabel: UILabel = {
        let loadingLabel = UILabel()
        loadingLabel.text = "Loading..."
        loadingLabel.translatesAutoresizingMaskIntoConstraints = false
        return loadingLabel
    }()
    
    // MARK: View Life Cycle
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.clearColor()
        
        wrapperView.addSubview(loadingLabel)
        wrapperView.addSubview(activityIndicator)
        self.addSubview(wrapperView)
        
        setupWrapperViewConstraints()
        setupActivityIndicatorConstraints()
        setupLoadingLabelConstraints()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Setup Methods
    
    private func setupLoadingLabelConstraints() {
        loadingLabel.centerXAnchor.constraintEqualToAnchor(wrapperView.centerXAnchor).active = true
        loadingLabel.bottomAnchor.constraintEqualToAnchor(wrapperView.bottomAnchor, constant: -10.0).active = true
    }
    
    private func setupActivityIndicatorConstraints() {
        activityIndicator.centerXAnchor.constraintEqualToAnchor(wrapperView.centerXAnchor).active = true
        activityIndicator.topAnchor.constraintEqualToAnchor(wrapperView.topAnchor, constant: 15.0).active = true
    }
    
    private func setupWrapperViewConstraints() {
        wrapperView.centerXAnchor.constraintEqualToAnchor(self.centerXAnchor).active = true
        wrapperView.centerYAnchor.constraintEqualToAnchor(self.centerYAnchor).active = true
        wrapperView.heightAnchor.constraintEqualToConstant(90.0).active = true
        wrapperView.widthAnchor.constraintEqualToConstant(125.0).active = true
    }
    
    // MARK: Action Methods
    
    func start() {
        wrapperView.backgroundColor = (delegate?.ddProgressIndicatorSetBackgroundColor() ?? UIColor.lightGrayColor()).colorWithAlphaComponent(0.5)
        loadingLabel.textColor = delegate?.ddProgressIndicatorSetLabelColor() ?? UIColor.blackColor()
        activityIndicator.color = delegate?.ddProgressIndicatorSetSpinnerColor() ?? UIColor.blackColor()
        activityIndicator.startAnimating()
    }
    
    func stop() {
        activityIndicator.stopAnimating()
    }    
    
}


# DDProgressIndicator

<!--[![CI Status](http://img.shields.io/travis/Donny Davis/DDProgressIndicator.svg?style=flat)](https://travis-ci.org/Donny Davis/DDProgressIndicator)-->
[![Version](https://img.shields.io/cocoapods/v/DDProgressIndicator.svg?style=flat)](http://cocoapods.org/pods/DDProgressIndicator)
[![License](https://img.shields.io/cocoapods/l/DDProgressIndicator.svg?style=flat)](http://cocoapods.org/pods/DDProgressIndicator)
[![Platform](https://img.shields.io/cocoapods/p/DDProgressIndicator.svg?style=flat)](http://cocoapods.org/pods/DDProgressIndicator)

DDProgressIndicator is a simple class that can be used to display an activity indicator over any UIViewController.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

DDProgressIndicator is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DDProgressIndicator"
```

## Usage

Make sure that your view controller conforms to the `DDProgressIndicatorDelegate` protocol.

```swift
class ViewController: UIViewController, DDProgressIndicatorDelegate {
    ...
}
```

Create a reference to the `DDProgressIndicatorView` class and set the delegate.

```swift
lazy var ddProgressIndicatorView: DDProgressIndicatorView = {
    var ddProgressIndicatorView = DDProgressIndicatorView(frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height))
    ddProgressIndicatorView.delegate = self
    return ddProgressIndicatorView
}()
```

There are two main methods to call to start and stop the activity indicator. Call these methods whenever you need to display the activity indicator.

```swift
ddProgressStartActivity()
```

```swfit
ddProgressStopActivity()
```

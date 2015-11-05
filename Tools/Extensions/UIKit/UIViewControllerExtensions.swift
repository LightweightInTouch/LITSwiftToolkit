//
//  UIViewControllerExtensions.swift
//  LITSwiftToolkit
//
//  Created by Lobanov Dmitry on 02.11.15.
//  Copyright © 2015 LightweightInTouch. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
  //MARK: Initialization
  static func nibName() -> String {
    return NSStringFromClass(self)
  }
  
  static func controllerWithDefaultNibName() -> Self {
    return self.init(nibName: self.nibName(), bundle: nil)
  }
  
  //MARK: Show/Hide
  func showAlert(message: String?, cancel: String?) {
    let controller = UIAlertController(title: nil, message: message, preferredStyle: .Alert)
    let cancel = UIAlertAction(title: cancel, style: .Cancel, handler: nil)
    controller.addAction(cancel)
    self.presentViewController(controller, animated: true, completion: nil)
  }
  
  //MARK: Navigation
  func safeDismiss(animated: Bool = true) {
    if let presentedViewController = self.presentedViewController {
      presentedViewController.dismissViewControllerAnimated(animated, completion: nil)
    }
  }
  
  func safeBack(animated: Bool = true) {
    if let navigationController = self.navigationController {
      navigationController.popViewControllerAnimated(animated)
    }
    else if let presentingViewController = self.presentingViewController {
      presentingViewController.dismissViewControllerAnimated(animated, completion: nil)
    }
  }
}
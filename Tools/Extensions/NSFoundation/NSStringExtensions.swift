//
//  NSStringExtensions.swift
//  LITSwiftToolkit
//
//  Created by Lobanov Dmitry on 03.11.15.
//  Copyright © 2015 LightweightInTouch. All rights reserved.
//

import Foundation

extension String {
  func telPrompt() -> String {
    return "telprompt://\(self)"
  }
  
  func telPromptURL() -> NSURL? {
    return NSURL(string: self.telPrompt())
  }
}

extension NSAttributedString {
  func linkify(textToFind: String, linkURL: NSURL) -> NSAttributedString {
    let string = NSMutableAttributedString(attributedString: self)
    
    let foundRange = string.mutableString.rangeOfString(textToFind)
    
    if foundRange.location != NSNotFound {
      string.addAttribute(NSLinkAttributeName, value: linkURL, range: foundRange)
    }
    
    let wholeRange = NSRange.init(location: 0, length: string.length)

    return string.attributedSubstringFromRange(wholeRange)
  }
}
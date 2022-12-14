//
//  SkMaxappPlistreaderModule.swift
//  test
//
//  Created by Marian Kucharcik
//  Copyright (c) 2022 Your Company. All rights reserved.
//

import UIKit
import TitaniumKit
import SystemConfiguration
/**
 
 Titanium Swift Module Requirements
 ---
 
 1. Use the @objc annotation to expose your class to Objective-C (used by the Titanium core)
 2. Use the @objc annotation to expose your method to Objective-C as well.
 3. Method arguments always have the "[Any]" type, specifying a various number of arguments.
 Unwrap them like you would do in Swift, e.g. "guard let arguments = arguments, let message = arguments.first"
 4. You can use any public Titanium API like before, e.g. TiUtils. Remember the type safety of Swift, like Int vs Int32
 and NSString vs. String.
 
 */

@objc(SkMaxappPlistreaderModule)
class SkMaxappPlistreaderModule: TiModule {

  public let testProperty: String = "Hello World"
  
  func moduleGUID() -> String {
    return "5c6265b5-4340-413a-8fa8-c2faa29e3192"
  }
  
  override func moduleId() -> String! {
    return "sk.maxapp.plistreader"
  }

  override func startup() {
    super.startup()
    debugPrint("[DEBUG] \(self) loaded")
  }

  @objc(getValue:)
  func getValue(arguments: Array<Any>?) -> String? {
    guard let arguments = arguments, let params = arguments[0] as? [String: Any] else { return nil }

    // Example method. 
    // Call with "MyModule.example({ hello: 'world' })"
      guard let key = params["key"] as? String else { return "" }
      let value = Bundle.main.object(forInfoDictionaryKey: key) as? String
    return value
  }
  
  @objc public var exampleProp: String {
     get { 
        // Example property getter
        return "Titanium rocks!"
     }
     set {
        // Example property setter
        // Call with "MyModule.exampleProp = 'newValue'"
        self.replaceValue(newValue, forKey: "exampleProp", notification: false)
     }
   }
}

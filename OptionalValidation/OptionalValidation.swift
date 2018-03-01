//
//  OptionalValidation.swift
//
//  Created by N A Shashank on 1/23/18.
//  Copyright © 2018 N A Shashank. All rights reserved.
//

import UIKit

public struct ValidationError:Error {
    var description = String()
}

public protocol OptionalValidation {
    func validate() -> ValidationError?
}

extension OptionalValidation {
    
    public func validate() -> ValidationError? {
        // first fetch all instance values for this class
        let mirror = Mirror(reflecting: self)
        for child in mirror.children
        {
            let subMirror = Mirror(reflecting:child.value)
            guard subMirror.displayStyle == Mirror.DisplayStyle.optional else{
                continue
            }
            guard subMirror.children.count == 0 else{
                continue
            }
            return ValidationError(description: "Please fill all the required fields.")
        }
        return nil
    }
    
}


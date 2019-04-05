//
//  OptionalValidation.swift
//
//  Created by N A Shashank on 1/23/18.
//  Copyright © 2018 N A Shashank. All rights reserved.
//

import UIKit

struct ValidationError:Error {
    var description = String()
}

protocol OptionalValidation {
    func validate() -> ValidationError?
}

extension OptionalValidation {
    
    func validate() -> ValidationError? {
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
    
    // recursive model check uncomment if required
//         func validate(object:Any) -> ValidationError? {
//         let mirror = Mirror(reflecting: object)
//         for child in mirror.children {
//             let subMirror = Mirror(reflecting: child.value)
//             guard subMirror.children.count == 0 else{
//                 guard let _ = validate(object: child.value) else {
//                     continue
//                 }
//                 return ValidationError(description: "Please fill all the required fields.")
//             }
//             guard subMirror.displayStyle == Mirror.DisplayStyle.optional else{
//                 //arrHolder.append(child.value)
//                 continue
//             }
//             guard subMirror.children.count == 0 else{
//                 //arrHolder.append(child.value)
//                 continue
//             }
//             return ValidationError(description: "Please fill all the required fields.")
//         }
//         return nil
//     }
    
}


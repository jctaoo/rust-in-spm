//
//  File.swift
//  
//
//  Created by jctaoo on 2021/7/1.
//

import greetings
import Foundation

let str = "jctaoo"

let cstr = str.cString(using: String.Encoding.utf8)

guard let rustResult = rust_greeting(cstr) else {
    print("Cannot found")
    exit(0)
}

let swiftResult = String(cString: rustResult)
print(swiftResult)

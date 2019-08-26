//
//  Hype.swift
//  hypeGuided
//
//  Created by Ian Hall on 8/26/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation


class Hype{
    let hypeText: String
    let timeStamp: Date
    
    init(hypeText: String, timeStamp: Date = Date()) {
        self.hypeText = hypeText
        self.timeStamp = timeStamp
    }
}

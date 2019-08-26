//
//  Hype.swift
//  hypeGuided
//
//  Created by Ian Hall on 8/26/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CloudKit
struct constants {
    static let recordHypeKey = "Hype"
    static let recordTextKey = "Text"
    static let recordTimeStampKey = "TimeStamp"
}
class Hype{
    let hypeText: String
    let timeStamp: Date
    
    init(hypeText: String, timeStamp: Date = Date()) {
        self.hypeText = hypeText
        self.timeStamp = timeStamp
    }
}
extension CKRecord{
    convenience init(hype: Hype){
        self.init(recordType: constants.recordHypeKey)
        self.setValue(hype.hypeText, forKey:constants.recordTextKey)
        self.setValue(hype.timeStamp, forKey:constants.recordTimeStampKey)
    }
}
extension Hype {
    //creating a hype from a record load
    convenience init?(ckRecord: CKRecord){
        guard let hypeText = ckRecord[constants.recordTextKey] as? String, let hypeDate = ckRecord[constants.recordTimeStampKey] as? Date else {return nil}
        self.init(hypeText: hypeText, timeStamp: hypeDate)
    }
}

//
//  KeyType.swift
//  ontology-swift-sdk
//
//  Created by SH-JRY-0073 on 2018/7/24.
//  Copyright © 2018年 com.wm. All rights reserved.
//

enum KeyType: UInt8{
    case ECDSA = 0x12
    case SM2   = 0x13
    case EDDSA = 0x14
    
    var label: UInt8 {
        return rawValue
    }
    
//    init(b: UInt8){
//        label = b
//    }
//
    static func fromLabel(label: UInt8) throws -> KeyType{
        guard let tempType = KeyType(rawValue: label)
            else { throw ErrorCode }
        return tempType
    }
}


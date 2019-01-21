//
//  XyoObjectStructureTest.swift
//  sdk-objectmodel-swiftTests
//
//  Created by Carter Harrison on 1/21/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Foundation
import XCTest
@testable import sdk_objectmodel_swift

class XyoObjectStructureTest : XCTestCase {
    
    func testGetBuffer () {
        let schema = XyoObjectSchema.create(id: 0xff, isIterable: false, isTypedIterable: false, sizeIdentifier: XyoObjectSize.ONE)
        let structure = XyoObjectStructure(schema: schema)
        structure.value = [0x13, 0x37]
        
        XCTAssertEqual(structure.getBuffer().toByteArray(), [0xff, 0x00, 0x03, 0x13, 0x37])
    }
    
    func testGetBytes () {
        let schema = XyoObjectSchema.create(id: 0xff, isIterable: false, isTypedIterable: false, sizeIdentifier: XyoObjectSize.ONE)
        let structure = XyoObjectStructure(schema: schema)
        structure.value = [0x13, 0x37]
        
        XCTAssertEqual(structure.getBytes(), [0xff, 0x00, 0x03, 0x13, 0x37])
    }
}
//
//  NSOrderedSetTest.swift
//  CollectionTests
//
//  Created by songzhou on 2020/8/4.
//  Copyright © 2020 songzhou. All rights reserved.
//

import XCTest
@testable import Collection

class NSOrderedSetTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        var set = OrderedSet<Int>()
        
        for i in (1...20).shuffled() {
            set.insert(i)
        }

        
        XCTAssert(set.contains(7))

        let copy = set
        set.insert(42)
        
        print(set)
        print(copy)
    }

    func testValueSemantic() throws {
        var set = OrderedSet<Int>()
        set.insert(1)
        
        let copy = set
        set.insert(42)
        
        print(set)
        print(copy)
    }
    
    func testHashable() throws {
        let value = Value(42)
        
        let a = value as AnyObject
        let b = value as AnyObject
        XCTAssertFalse(a.isEqual(b))
        print(a.hash!)
        print(b.hash!)
        
        var values = OrderedSet<Value>()
        (1 ... 20).shuffled().map(Value.init).forEach { values.insert($0) }
        
        XCTAssert(values.contains(Value(7)))
        XCTAssertFalse(values.contains(Value(42)))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    struct Value: Comparable {
        let value: Int
        init(_ value: Int) {
            self.value = value
        }
        
        static func ==(left: Value, right: Value) -> Bool { return left.value == right.value }
        static func <(left: Value, right: Value) -> Bool { return left.value < right.value }
    }
}

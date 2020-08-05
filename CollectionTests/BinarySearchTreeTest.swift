//
//  BinarySearchTreeTest.swift
//  CollectionTests
//
//  Created by Song Zhou on 2020/8/5.
//  Copyright © 2020 songzhou. All rights reserved.
//

import XCTest
@testable import Collection

class BinarySearchTreeTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let smallTree: BinaryTree<Int> = .node(2,
                                               .node(1, .empty, .empty),
                                               .node(3, .empty, .empty))
        
        print(smallTree)
    }

    func testInsert() throws {
        var set = BinaryTree<Int>.empty

        set.insert(2)
        set.insert(1)
        set.insert(3)
        set.insert(4)
        
        print(set)
        
//        for i in (1...20).shuffled() {
//            set.insert(i)
//        }
//            
//        print(set)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

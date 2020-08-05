//
//  redBlackTreeTest.swift
//  CollectionTests
//
//  Created by songzhou on 2020/8/4.
//  Copyright © 2020 songzhou. All rights reserved.
//

import XCTest
@testable import Collection

class redBlackTreeTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let smallTree: RedBlackTree<Int> = .node(.black, 2,
                                                 .node(.red, 1, .empty, .empty),
                                                 .node(.red, 3, .empty, .empty))
        
        print(smallTree)
        

        let bigTree: RedBlackTree<Int> = .node(.black, 9,
                                               .node(.red, 5,
                                                     .node(.black, 1, .empty, .node(.red, 4, .empty, .empty)), .node(.black, 8, .empty, .empty)),
                                               .node(.red, 12,
                                                     .node(.black, 11, .node(.black, 11, .empty, .empty), .node(.black, 11, .empty, .empty)), .node(.black, 16,
                                                                                              .node(.red, 14, .empty, .empty), .node(.red, 17, .empty, .empty))))
        
        print(bigTree)
    }

    func testInsert() throws {
        var set = RedBlackTree<Int>.empty
        
        for i in (1 ... 20).shuffled() {
            set.insert(i)
        }
        
        print(set)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

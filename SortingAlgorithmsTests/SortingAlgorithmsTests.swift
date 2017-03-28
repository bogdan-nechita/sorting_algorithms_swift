//
//  SortingAlgorithmsTests.swift
//  SortingAlgorithmsTests
//
//  Created by Bogdan Nechita on 3/28/17.
//  Copyright © 2017 Bogdan Nechita. All rights reserved.
//

import XCTest
@testable import SortingAlgorithms

class SortingAlgorithmsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInsertionSortCorrectness() {
        let arrayToSort = [54, 0, 300, -12]
        
        let sortedArray = SortingAlgorithms.insertionSort(arrayToSort: arrayToSort, ascending: true)
        
        XCTAssertEqual(sortedArray, [-12, 0, 54, 300])
        
    }
    
    func testInsertionSortPerformance() {
        let arrayToSort = [54, 0, 300, -12, 233, 6, 66, 21, 54, 7, -100, 788, 3, 89, 34, 69]
        
        self.measure {
            _ = SortingAlgorithms.insertionSort(arrayToSort: arrayToSort, ascending: true)
        }
    }
    
    func testSelectionSortCorrectness() {
        let arrayToSort = [54, 0, 300, -12]
        
        let sortedArray = SortingAlgorithms.selectionSort(arrayToSort: arrayToSort, ascending: true)
        
        XCTAssertEqual(sortedArray, [-12, 0, 54, 300])
    }
    
    func testSelectionSortPerformance() {
        let arrayToSort = [54, 0, 300, -12, 233, 6, 66, 21, 54, 7, -100, 788, 3, 89, 34, 69]
        
        self.measure {
            _ = SortingAlgorithms.selectionSort(arrayToSort: arrayToSort, ascending: true)
        }
    }
    
}

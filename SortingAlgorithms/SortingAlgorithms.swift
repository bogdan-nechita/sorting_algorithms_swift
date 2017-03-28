//
//  File.swift
//  InsertionSort
//
//  Created by Bogdan Nechita on 3/20/17.
//  Copyright © 2017 Bogdan Nechita. All rights reserved.
//

import Foundation

class SortingAlgorithms {
    
    // MARK: Algorithms
    
    // Insertion Sort
    class func insertionSort(arrayToSort: [Int], ascending: Bool) -> [Int] {
        var sortedArray = arrayToSort
        
        for i in 1...sortedArray.count-1 {
            let key = sortedArray[i]
            
            var j = i - 1
            // Insert the item in the sorted array (0, i-1).
            while j >= 0 && (ascending ? sortedArray[j] > key : sortedArray[j] < key) {
                sortedArray[j + 1] = sortedArray[j]
                j = j - 1
            }
            sortedArray[j + 1] = key
        }
        
        return sortedArray
    }
    
    // Selection sort
    class func selectionSort(arrayToSort: [Int], ascending: Bool) -> [Int] {
        var sortedArray = arrayToSort
        
        // Index of the max or min, depending on the sorting order.
        var currentExtremeIndex = sortedArray[0]
        for index in 0...sortedArray.count-1 {
            // Find max or min.
            currentExtremeIndex = ascending ? findMininum(arrayToSearch: sortedArray, startIndex: index) : findMaximum(arrayToSearch: sortedArray, startIndex: index)
            
            // Swap minimum with current element.
            swapInArray(array: &sortedArray, firstIndex: index, secondIndex: currentExtremeIndex)
        }
        
        return sortedArray
    }
    
    // MARK: Utilities
    
    // Turn and array of integers in a String.
    class func flattenArray(inputArray: [Int]) -> String {
        return inputArray.map({ item in
            item != inputArray.last ? String("\(item), ") : String("\(item)")
        }).joined()
    }
    
    // Swap two elements in an array on integers.
    class func swapInArray(array: inout [Int], firstIndex: Int, secondIndex: Int) {
        let firstElem = array[firstIndex]
        
        array[firstIndex] = array[secondIndex]
        array[secondIndex] = firstElem
    }
    
    // Find the minimum in an array of integers and return its index.
    class func findMininum(arrayToSearch: [Int], startIndex: Int) -> Int {
        var minElemIndex = startIndex
        
        for index in startIndex...arrayToSearch.count-1 {
            if arrayToSearch[index] < arrayToSearch[minElemIndex] {
                minElemIndex = index
            }
        }
        return minElemIndex
    }
    
    // Find the maximum in an array of integers and return its index.
    class func findMaximum(arrayToSearch: [Int], startIndex: Int) -> Int {
        var maxElemIndex = startIndex
        
        for index in startIndex...arrayToSearch.count-1 {
            if arrayToSearch[index] > arrayToSearch[maxElemIndex] {
                maxElemIndex = index
            }
        }
        return maxElemIndex
    }

}

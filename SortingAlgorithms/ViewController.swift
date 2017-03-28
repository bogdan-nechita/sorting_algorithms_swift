//
//  ViewController.swift
//  InsertionSort
//
//  Created by Bogdan Nechita on 3/17/17.
//  Copyright © 2017 Bogdan Nechita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var arrayToSort: UITextView!
    @IBOutlet weak var sortedArray: UITextView!
    
    let inputArray = [233, 6, 0, 66, 21, 54, 7, -100, 788, 3, 89, 34, 69]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //arrayToSort.text = SortingAlgorithms.flattenArray(inputArray: inputArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func insertionSortAscending(_ sender: Any) {
        let outputArray = SortingAlgorithms.insertionSort(arrayToSort: inputArray, ascending: true)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    @IBAction func insertionSortDescending(_ sender: Any) {
        let outputArray = SortingAlgorithms.insertionSort(arrayToSort: inputArray, ascending: false)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    @IBAction func selectionSortDescending(_ sender: Any) {
        let outputArray = SortingAlgorithms.selectionSort(arrayToSort: inputArray, ascending: false)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    @IBAction func selectionSortAscending(_ sender: Any) {
        let outputArray = SortingAlgorithms.selectionSort(arrayToSort: inputArray, ascending: true)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
}


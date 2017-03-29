//
//  ViewController.swift
//  InsertionSort
//
//  Created by Bogdan Nechita on 3/17/17.
//  Copyright © 2017 Bogdan Nechita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var arrayToSort: UITextView!
    @IBOutlet weak var sortedArray: UITextView!
    
    var inputArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayToSort.delegate = self
        
        arrayToSort.text = "233,6,0,-677,22,68888,-2,43"
        
        inputArray = SortingAlgorithms.makeArrayFromString(sourceString: arrayToSort.text!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func insertionSortAscending(_ sender: Any) {
        inputArray = SortingAlgorithms.makeArrayFromString(sourceString: arrayToSort.text!)
        let outputArray = SortingAlgorithms.insertionSort(arrayToSort: inputArray, ascending: true)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    @IBAction func insertionSortDescending(_ sender: Any) {
        inputArray = SortingAlgorithms.makeArrayFromString(sourceString: arrayToSort.text!)
        let outputArray = SortingAlgorithms.insertionSort(arrayToSort: inputArray, ascending: false)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    @IBAction func selectionSortDescending(_ sender: Any) {
        inputArray = SortingAlgorithms.makeArrayFromString(sourceString: arrayToSort.text!)
        let outputArray = SortingAlgorithms.selectionSort(arrayToSort: inputArray, ascending: false)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    @IBAction func selectionSortAscending(_ sender: Any) {
        inputArray = SortingAlgorithms.makeArrayFromString(sourceString: arrayToSort.text!)
        let outputArray = SortingAlgorithms.selectionSort(arrayToSort: inputArray, ascending: true)
        sortedArray.text = SortingAlgorithms.flattenArray(inputArray: outputArray)
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}

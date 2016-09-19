//
//  ViewController.swift
//  tipCalculator
//
//  Created by Zachary Denham on 9/13/16.
//  Copyright © 2016 elated. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emojiAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var calculatedTip: UILabel!
    @IBOutlet weak var amount: UITextField!
    let tipPercents = [1.15, 1.20, 1.22]
    let emojies = ["😬", "😄", "😍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeEmoji()
    }
    
    @IBAction func touched(_ sender: AnyObject){
        changeEmoji()
        calculateTip()
    }
    
    @IBAction func onEdit(_ sender: AnyObject) {
        changeEmoji()
        calculateTip()
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    func calculateTip(){
        let doubleAmount = Double(amount.text!) ?? 0.0
        totalAmount.text = String( format: "$%.2f", doubleAmount * tipPercents[tipPercent.selectedSegmentIndex])
        calculatedTip.text = String(format: "$%.2f",  doubleAmount * (tipPercents[tipPercent.selectedSegmentIndex] - 1))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func changeEmoji(){
        let index = tipPercent.selectedSegmentIndex
        emojiAmount.text = emojies[index]
    }
    
}

//
//  PriceRange.swift
//  gloApp
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PriceRange: UIViewController {
    
    let data = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var lowPrice: Checkbox!
    
    @IBOutlet weak var mediumPrice: Checkbox!
    
    @IBOutlet weak var highPrice: Checkbox!
    
    var selections = [Checkbox]()
    
    @IBAction func nextBtn(_ sender: Any) {
        var tally = 0
        for selection in selections {
            if selection.isChecked == true {
                tally += 1
            }
        }
        if tally == 1 {
            for selection in selections {
                if selection == lowPrice && selection.isChecked == true {
                    data.results[1] = "low"
                }
                else if selection == mediumPrice && selection.isChecked == true {
                    data.results[1] = "medium"
                }
                else if selection == highPrice && selection.isChecked == true {
                    data.results[1] = "high"
                }
            }
        }
        else if tally < 1 {
            let alertController = UIAlertController(title: "You didn't choose any", message: "", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        else {
            let alertController2 = UIAlertController(title: "You chose more than one", message: "", preferredStyle: UIAlertController.Style.alert)
            alertController2.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: nil))
            present(alertController2, animated: true, completion: nil)
        }
        print(tally)
        print(data.results)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selections = [lowPrice, mediumPrice, highPrice]
        
        lowPrice.borderStyle = .circle
        lowPrice.checkmarkStyle = .circle
        lowPrice.valueChanged = { (value) in
            print("checkbox value change: \(value)")
        }
        
        mediumPrice.borderStyle = .circle
        mediumPrice.checkmarkStyle = .circle
        mediumPrice.valueChanged = { (value) in
            print("checkbox value change: \(value)")
        }
        
        highPrice.borderStyle = .circle
        highPrice.checkmarkStyle = .circle
        highPrice.valueChanged = { (value) in
            print("checkbox value change: \(value)")
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  SkinType.swift
//  gloApp
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class SkinType: UIViewController {

    let data = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var oilySkin: Checkbox!
    
    @IBOutlet weak var drySkin: Checkbox!
    
    @IBOutlet weak var normalSkin: Checkbox!
    
    @IBOutlet weak var combSkin: Checkbox!
    
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
                if selection == oilySkin && selection.isChecked == true {
                    data.results[0] = "oily"
                }
                else if selection == drySkin && selection.isChecked == true {
                    data.results[0] = "dry"
                }
                else if selection == normalSkin && selection.isChecked == true {
                    data.results[0] = "normal"
                }
                else if selection == combSkin && selection.isChecked == true{ data.results[0] = "combination"
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
            
            selections = [oilySkin, drySkin, normalSkin, combSkin]
            
            oilySkin.borderStyle = .circle
            oilySkin.checkmarkStyle = .circle
            oilySkin.valueChanged = { (value) in
                print("checkbox value change: \(value)")
            }
            
            drySkin.borderStyle = .circle
            drySkin.checkmarkStyle = .circle
            drySkin.valueChanged = { (value) in
                print("checkbox value change: \(value)")
            }
            
            normalSkin.borderStyle = .circle
            normalSkin.checkmarkStyle = .circle
            normalSkin.valueChanged = { (value) in
                print("checkbox value change: \(value)")
            }
            
            combSkin.borderStyle = .circle
            combSkin.checkmarkStyle = .circle
            combSkin.valueChanged = { (value) in
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


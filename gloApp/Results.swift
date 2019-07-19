//
//  Results.swift
//  gloApp
//
//  Created by Apple on 7/19/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class Results: UIViewController {
    
    var data = ResultsData()
    
    let userResult = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var cleanserName: UILabel!
    
    @IBOutlet weak var cleanserPrice: UILabel!
    
    @IBOutlet weak var tonerName: UILabel!
    
    @IBOutlet weak var tonerPrice: UILabel!
    
    @IBOutlet weak var moisturizerName: UILabel!
    
    @IBOutlet weak var moisturizerPrice: UILabel!
    
    override func viewDidLoad() {
        
        for (key, value) in data.cleanser {
            if key[0] == userResult.results[0] && key[1] == userResult.results[1] && key[2] == userResult.results[2] {
                cleanserName.text = value[0]
                cleanserPrice.text = value[1]
            }
        }
        
        for (key, value) in data.toner {
            if key[0] == userResult.results[0] && key[1] == userResult.results[1] && key[2] == userResult.results[2] {
                tonerName.text = value[0]
                tonerPrice.text = value[1]
            }
        }
        
        for (key, value) in data.moisturizer {
            if key[0] == userResult.results[0] && key[1] == userResult.results[1] && key[2] == userResult.results[2] {
                moisturizerName.text = value[0]
                moisturizerPrice.text = value[1]
            }
        }
        
        super.viewDidLoad()

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

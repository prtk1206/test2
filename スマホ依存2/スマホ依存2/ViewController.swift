//
//  ViewController.swift
//  スマホ依存2
//
//  Created by 菊池隆之 on 2017/12/21.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
   func random() -> String {
        let number1 = arc4random_uniform(10)
        let number2 = arc4random_uniform(10)
        let number3 = arc4random_uniform(10)
        let number4 = arc4random_uniform(10)
        let number5 = arc4random_uniform(10)
        let number6 = arc4random_uniform(10)
        return "\(number1)\(number2)\(number3)\(number4)\(number5)\(number6)"
        
        
    }
    
    
       
    
    
   
    
    @IBAction func setting(_ sender: Any) {
    
    
        guard let url = URL(string:"App-Prefs:root=General&path=ACCESSIBILITY") else {
            return label.text = "残念"
            
        }
        
      UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
            }
    var str:String? = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = random()
        str = label.text
        UserDefaults.standard.set(str,forKey:"str")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func reset(_ sender: Any) {
        label.text = random()
        str = label.text
        UserDefaults.standard.set(str,forKey:"str")
    }
    @IBAction func unwindAction(_ segue: UIStoryboardSegue){
    }
    }




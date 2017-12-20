//
//  labelViewController.swift
//  スマホ依存
//
//  Created by 菊池隆之 on 2017/12/19.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit

class labelViewController: UIViewController {
    var math:String? = ""
    @IBOutlet weak var label: UILabel!
   
    override func viewDidLoad() {
        label.text = ViewController.decision2()
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

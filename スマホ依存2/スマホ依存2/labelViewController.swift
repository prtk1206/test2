//
//  labelViewController.swift
//  スマホ依存2
//
//  Created by 菊池隆之 on 2017/12/21.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit

class labelViewController: UIViewController {
    let storyboad: UIStoryboard? = self.storyboard!
    let nextView,animated storyboard.instantiateViewController(withIdentifier: "ViewControllerID")
    present(nextView,animated: true, completion: nil)
    
    
    
    
    @IBOutlet weak var label: UILabel!
    
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = UserDefaults.standard.string(forKey: "str")
        navigationItem.setHidesBackButton(false, animated: false)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func top(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "segueLabeltoTop", sender: self)
    }
    @IBAction func Top(_ sender: UIButton) {
        
    }
    
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



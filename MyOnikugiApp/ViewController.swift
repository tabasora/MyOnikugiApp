//
//  ViewController.swift
//  MyOnikugiApp
//
//  Created by Macbook on 2020/11/28.
//  Copyright © 2020年 Tabata Sorane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        //0 - n
        //arc4random_uniform(n + 1)
        let results = ["大吉","吉","中吉","凶","大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        
        //self.myLabel.text = String(random)
      self.myLabel.text = results[Int(random)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // myLabel.layer.borderColor = UIColor.orange.cgColor
      //  myLabel.layer.borderWidth = 5
       // myLabel.layer.cornerRadius = 50
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }


}


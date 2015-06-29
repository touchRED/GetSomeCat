//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Duncan Trotter on 6/29/15.
//  Copyright (c) 2015 Duncan Trotter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HelloText: UILabel!
    
    @IBOutlet weak var CatImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func MemeButton() {
        HelloText.text = "Enjoy Cats!"
        
        let url = NSURL(string: "http://thecatapi.com/api/images/get?format=src&type=png")
        let data = NSData(contentsOfURL: url!)
        
        CatImage.image = UIImage(data: data!)
    }
}


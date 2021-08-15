//
//  ViewController.swift
//  A815HelloXIB
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theMyView: MyView!
    override func viewDidLoad() {
        super.viewDidLoad()
        theMyView.view.backgroundColor = UIColor.red
        
        theMyView.buttonClicked = {
            print("Hello Xib")
        }
    }



}


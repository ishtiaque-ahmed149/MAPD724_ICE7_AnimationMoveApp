//
//  ViewController.swift
//  AnimationMoveApp
//
//  Created by Ishtiaque Ahmed on 3/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 2.0) {
            self.myLabel.center.y += self.view.bounds.height
            self.myTextField.center.y += self.view.bounds.height
            self.myImageView.center.y += self.view.bounds.height
        }
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        myLabel.center.y -= view.bounds.height
        myTextField.center.y -= view.bounds.height
        myImageView.center.y -= view.bounds.height
    }

}

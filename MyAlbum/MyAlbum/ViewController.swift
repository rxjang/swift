//
//  ViewController.swift
//  MyAlbum
//
//  Created by Seohyun Jang on 2020/12/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showAlert(_ sender: Any) {
        let alert=UIAlertController(title: "Hello", message: "My First App!!", preferredStyle: .alert)
        let action=UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}


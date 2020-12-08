//
//  ViewController.swift
//  MyAlbum
//
//  Created by Seohyun Jang on 2020/12/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel!
    var currentValue=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let message="가격은 \(currentValue) 입니다"
        let alert=UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action=UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        refresh()
    }
    
    func refresh(){
        let randomPrice=arc4random_uniform(100)+1
        currentValue=Int(randomPrice)
        priceLabel.text="$\(currentValue)"

    }
    
}


//
//  ViewController.swift
//  TheLight
//
//  Created by Taof on 10/20/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lightImageView: UIImageView!
    
    @IBOutlet weak var lightButton: UIButton!
    
    // tạo một biến kiểm soát trạng thái của bóng đèn
    var isState: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // đặt lại trạng thái của isSate là true
        isState = true
        
        // đặt lại ảnh ban đầu là đèn bật
        lightImageView.image = UIImage(named: "lightOn")
        
        // đặt lại tên cho nút
        lightButton.setTitle("Tắt đèn", for: UIControl.State.normal)
    }
    
   
    @IBAction func onPress(_ sender: Any) {
        
        if isState {
            lightImageView.image = UIImage(named: "lightOff")
            lightButton.setTitle("Bật đèn", for: .normal)
        } else {
            lightImageView.image = UIImage(named: "lightOn")
            lightButton.setTitle("Tắt đèn", for: .normal)
        }
        
        isState = !isState
    }
    
    
}


//
//  ViewController.swift
//  HomeUI
//
//  Created by DCS on 18/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let mylabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome Back !"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  35)

        return label
    }()
    private let  myimg:UIImageView   = {
        let img = UIImageView(image:UIImage( named: "aj"))
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 100
        img.clipsToBounds = true
        return img
    }()
    
    private let btn:UIButton = {
        let bt = UIButton()
        bt.setTitle("Starts", for: .normal)
        bt.backgroundColor = .black
        bt.layer.cornerRadius = 30
        bt.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        return bt
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = UIColor(red:0.449 ,green: 0.229 ,blue: 0.808 ,alpha: 1).cgColor
        view.addSubview(mylabel)
        
        view.addSubview(myimg)
        view.addSubview(btn)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mylabel.frame = CGRect(x: 9, y: 66, width: 253, height: 41)
        myimg.frame = CGRect(x: 80, y: 209, width: 200, height: 200)
        
        btn.frame = CGRect(x: 88, y: 535, width: 174, height: 58)
    }
    @objc func nextpage(){
        let lp = LoginPage()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }
}

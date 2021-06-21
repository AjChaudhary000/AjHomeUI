//
//  RegPage4.swift
//  HomeUI
//
//  Created by DCS on 21/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RegPage4: UIViewController {
    private let myprogress:UIProgressView = {
        let myprogress = UIProgressView ()
        myprogress.setProgress(0.97, animated: true)
        myprogress.progressTintColor = .green
        myprogress.trackTintColor = .black
        //myprogress.transform = myprogress.transform.scaledBy(x: 1, y: 8)
        var transform : CGAffineTransform = CGAffineTransform(scaleX: 5.0, y: 9.0)
        myprogress.transform = transform
        return myprogress
    }()
    private let mylabel1:UILabel = {
        let label1 = UILabel()
        label1.text = "Checking for all Details"
        label1.textColor = .white
        label1.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label1
    }()
    private let mylabel2:UILabel = {
        let label2 = UILabel()
        label2.text = " I have read and agree to the Terms of Service"
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize:  14)
        return label2
    }()
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
       // switcher.addTarget(self, action: #selector(swOnOff), for: .valueChanged)
        return switcher
    }()
    private let btn:UIButton = {
        let bt = UIButton()
        bt.setTitle("Submit", for: .normal)
        bt.backgroundColor = .black
        bt.layer.cornerRadius = 30
        bt.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        return bt
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
            view.layer.backgroundColor = UIColor(red:0.449 ,green: 0.229 ,blue: 0.808 ,alpha: 1).cgColor
        view.addSubview(myprogress)
        view.addSubview(mylabel1)
        view.addSubview(mylabel2)
        view.addSubview(mySwitch)
        view.addSubview(btn)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myprogress.frame = CGRect(x: 15, y: 132, width: 313, height: 15)
        mylabel1.frame = CGRect(x: 97 , y: 172, width: 260, height: 23)
        mylabel2.frame = CGRect(x: 22 , y: 235, width:330, height: 21)
        mySwitch.frame = CGRect(x: 22 , y: 275, width:69, height: 30)
        btn.frame = CGRect(x: 165  , y:577, width: 174, height: 58)
    }
    @objc func nextpage(){
        let lp = HomePage()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }
    
}

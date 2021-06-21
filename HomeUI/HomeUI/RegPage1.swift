//
//  RegPage1.swift
//  HomeUI
//
//  Created by DCS on 18/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RegPage1: UIViewController {
    private let mylabel:UILabel = {
        let label = UILabel()
        label.text = " Create Account !"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  35)
        
        return label
    }()
    private let mylabel1:UILabel = {
        let label1 = UILabel()
        label1.text = " Account Details"
        label1.textColor = .white
        label1.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label1
    }()
    
    private let myprogress:UIProgressView = {
        let myprogress = UIProgressView ()
        myprogress.setProgress(0.3, animated: true)
        myprogress.progressTintColor = .green
        myprogress.trackTintColor = .black
        //myprogress.transform = myprogress.transform.scaledBy(x: 1, y: 8)
        var transform : CGAffineTransform = CGAffineTransform(scaleX: 5.0, y: 9.0)
        myprogress.transform = transform
        return myprogress
    }()
    private let mylabel2:UILabel = {
        let label2 = UILabel()
        label2.text = "Name"
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize:  17)
        label2.textAlignment = .center
        return label2
    }()
    private  let myinput:UITextField = {
        let input = UITextField()
        input.layer.cornerRadius = 10
        input.backgroundColor = .white
        input.layer.borderColor = UIColor.black.cgColor
        input.layer.borderWidth = 2
        input.textAlignment =  .center
        input.layer.opacity = 0.6
        return input
    }()
    
    private let mylabel3:UILabel = {
        let label3 = UILabel()
        label3.text = "E-mail"
        label3.textColor = .white
        label3.font = UIFont.boldSystemFont(ofSize:  17)
        label3.textAlignment = .center
        return label3
    }()
    private  let myinput1:UITextField = {
        let input1 = UITextField()
        input1.layer.cornerRadius = 10
        input1.backgroundColor = .white
        input1.layer.borderColor = UIColor.black.cgColor
        input1.layer.borderWidth = 2
        input1.textAlignment =  .center
        input1.layer.opacity = 0.6
        return input1
    }()
    private let mylabel4:UILabel = {
        let label4 = UILabel()
        label4.text = "Password"
        label4.textColor = .white
        label4.font = UIFont.boldSystemFont(ofSize:  17)
        label4.textAlignment = .center
        return label4
    }()
    private  let myinput2:UITextField = {
        let input2 = UITextField()
        input2.layer.cornerRadius = 10
        input2.backgroundColor = .white
        input2.layer.borderColor = UIColor.black.cgColor
        input2.layer.borderWidth = 2
        input2.textAlignment =  .center
        input2.layer.opacity = 0.6
        return input2
    }()
    private let mylabel5:UILabel = {
        let label5 = UILabel()
        label5.text = "Re-Type Password"
        label5.textColor = .white
        label5.font = UIFont.boldSystemFont(ofSize:  17)
        label5.textAlignment = .center
        return label5
    }()
    private  let myinput3:UITextField = {
        let input3 = UITextField()
        input3.layer.cornerRadius = 10
        input3.backgroundColor = .white
        input3.layer.borderColor = UIColor.black.cgColor
        input3.layer.borderWidth = 2
        input3.textAlignment =  .center
        input3.layer.opacity = 0.6
        return input3
    }()
    private let btn:UIButton = {
        let bt = UIButton()
        bt.setTitle("Next", for: .normal)
        bt.backgroundColor = .black
        bt.layer.cornerRadius = 30
        bt.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        return bt
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
         view.layer.backgroundColor = UIColor(red:0.449 ,green: 0.229 ,blue: 0.808 ,alpha: 1).cgColor
        view.addSubview(mylabel)
        view.addSubview(myprogress)
        view.addSubview(mylabel1)
        view.addSubview(mylabel2)
        view.addSubview(myinput)
        view.addSubview(mylabel3)
        view.addSubview(myinput1)
        view.addSubview(mylabel4)
        view.addSubview(myinput2)
        view.addSubview(mylabel5)
        view.addSubview(myinput3)
        view.addSubview(btn)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mylabel.frame = CGRect(x: 9, y: 66, width: 280	, height: 41)
        myprogress.frame = CGRect(x: 15, y: 132, width: 313, height: 15)
         mylabel1.frame = CGRect(x: 99 , y: 172, width: 151, height: 23)
        mylabel2.frame = CGRect(x: 22 , y: 235, width: 48, height: 21)
        myinput.frame = CGRect(x: 22 , y: 273, width: 306, height: 40)
        mylabel3.frame = CGRect(x: 22 , y: 318, width: 60, height: 21)
        myinput1.frame = CGRect(x: 22 , y: 349, width: 306, height: 40)
        mylabel4.frame = CGRect(x: 22 , y: 394, width: 80, height: 21)
        myinput2.frame = CGRect(x: 22 , y: 425, width: 306, height: 40)
        mylabel5.frame = CGRect(x: 22 , y: 470, width: 157, height: 21)
        myinput3.frame = CGRect(x: 22 , y: 501, width: 306, height: 40)
        btn.frame = CGRect(x: 165  , y:577, width: 174, height: 58)
    }

    @objc func nextpage(){
        let lp = RegPage2()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }

}

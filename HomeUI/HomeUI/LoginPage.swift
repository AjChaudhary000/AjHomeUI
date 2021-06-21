//
//  LoginPage.swift
//  HomeUI
//
//  Created by DCS on 18/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {
    private let mylabel:UILabel = {
        let label = UILabel()
        label.text = " Hello Friends !"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize:  35)
        
        return label
    }()
    private let myview:UIView  = {
       let view = UIView()
        view.layer.backgroundColor = UIColor(red:0.241 ,green: 0.197 ,blue: 0.508 ,alpha: 1).cgColor
        view.layer.opacity  = 0.2
        return view
    }()
    private let  myimg:UIImageView   = {
        let img = UIImageView(image:UIImage( named: "user"))
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 100
        img.clipsToBounds = true
        return img
    }()
    private let mylabel1:UILabel = {
        let label1 = UILabel()
        label1.text = "Login Here"
        label1.textColor = .white
        label1.font = UIFont.boldSystemFont(ofSize:  25)
        label1.textAlignment = .center
        return label1
    }()
    private let mylabel2:UILabel = {
        let label2 = UILabel()
        label2.text = "E-mail & Username"
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize:  17)
        label2.textAlignment = .center
        return label2
    }()
    private  let myinput:UITextField = {
        let input = UITextField()
        input.placeholder = "Enter The E-mail ..."
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
        label3.text = "Password"
        label3.textColor = .white
        label3.font = UIFont.boldSystemFont(ofSize:  17)
        label3.textAlignment = .center
        return label3
    }()
    private  let myinput1:UITextField = {
        let input1 = UITextField()
        input1.placeholder = "Enter The Password ..."
        input1.layer.cornerRadius = 10
        input1.backgroundColor = .white
        input1.layer.borderColor = UIColor.black.cgColor
        input1.layer.borderWidth = 2
        input1.textAlignment =  .center
        input1.layer.opacity = 0.6
        return input1
    }()
    private let btn:UIButton = {
        let bt = UIButton()
        bt.setTitle("Login", for: .normal)
        bt.backgroundColor = .black
        bt.layer.cornerRadius = 30
        bt.addTarget(self, action: #selector(home), for: .touchUpInside)
        return bt
    }()
    private let mylabel4:UILabel = {
        let label4 = UILabel()
        label4.text = "Create New Account ? "
        label4.textColor = .white
        label4.font = UIFont.boldSystemFont(ofSize:  17)
        label4.textAlignment = .center
        return label4
    }()
    private let mylabel5:UIButton = {
        let bt = UIButton()
        bt.setTitle("Signup", for: .normal)
        bt.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        return bt
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isToolbarHidden = true
        view.layer.backgroundColor = UIColor(red:0.449 ,green: 0.229 ,blue: 0.808 ,alpha: 1).cgColor
         view.addSubview(mylabel)
        view.addSubview(myview)
        view.addSubview(myimg)
        view.addSubview(mylabel1)
        view.addSubview(mylabel2)
        view.addSubview(myinput)
        view.addSubview(mylabel3)
        view.addSubview(myinput1)
        view.addSubview(btn)
        view.addSubview(mylabel4)
        view.addSubview(mylabel5)
        // Do any additional setup after loading the view.
    }
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            mylabel.frame = CGRect(x: 9, y: 66, width: 253, height: 41)
            myview.frame = CGRect(x: 0, y: 243, width: 367, height: 431)
            myimg.frame = CGRect(x: 80, y: 150, width: 200, height: 200)
            mylabel1.frame = CGRect(x: 118, y: 359, width: 123, height: 29)
            mylabel2.frame = CGRect(x: 23 , y: 405, width: 156, height: 21)
            myinput.frame = CGRect(x: 23  , y: 432, width: 306, height: 38)
            mylabel3.frame = CGRect(x: 23 , y: 479, width: 80, height: 21)
            myinput1.frame = CGRect(x: 23  , y: 509, width: 306, height: 38)
            btn.frame = CGRect(x: 85  , y:558, width: 174, height: 58)
             mylabel4.frame = CGRect(x: 17  , y:630, width: 220, height: 18)
            mylabel5.frame = CGRect(x: 235  , y:626, width: 98, height: 26)
        }
    
    @objc func nextpage(){
        let lp = RegPage1()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }
    @objc func home(){
        let lp = HomePage()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }

}

//
//  RegPage2.swift
//  HomeUI
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RegPage2: UIViewController {
    private let page:UIPageControl = {
        let page = UIPageControl()
        page.numberOfPages = 2
        page.currentPage = 0
        return page
    }()
    private let myprogress:UIProgressView = {
        let myprogress = UIProgressView ()
        myprogress.setProgress(0.6, animated: true)
        myprogress.progressTintColor = .green
        myprogress.trackTintColor = .black
        //myprogress.transform = myprogress.transform.scaledBy(x: 1, y: 8)
        var transform : CGAffineTransform = CGAffineTransform(scaleX: 5.0, y: 9.0)
        myprogress.transform = transform
        return myprogress
    }()
    private let mylabel1:UILabel = {
        let label1 = UILabel()
        label1.text = " Personal Details"
        label1.textColor = .white
        label1.font = UIFont.boldSystemFont(ofSize:  20)
        
        return label1
    }()
    private let mylabel2:UILabel = {
        let label2 = UILabel()
        label2.text = " Your Skills"
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize:  20)
        return label2
    }()
    private let mylabel3:UILabel = {
        let label3 = UILabel()
        label3.text = "Programmer"
        label3.textColor = .black
        label3.font = UIFont.boldSystemFont(ofSize:  20)
        return label3
    }()
    private let myslider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.thumbTintColor = .black
        slider.minimumTrackTintColor = .yellow
       slider.addTarget(self, action: #selector(handleslider), for: .valueChanged)
        return slider
    }()
    private let mylabel4:UILabel = {
        let label4 = UILabel()
        label4.text = "0"
        label4.textColor = .white
        label4.font = UIFont.boldSystemFont(ofSize:  20)
        return label4
    }()
    private let mylabel5:UILabel = {
        let label5 = UILabel()
        label5.text = "Coding"
        label5.textColor = .black
        label5.font = UIFont.boldSystemFont(ofSize:  20)
        return label5
    }()
    private let myslider1:UISlider = {
        let slider1 = UISlider()
        slider1.minimumValue = 0
        slider1.maximumValue = 100
        slider1.thumbTintColor = .black
        slider1.minimumTrackTintColor = .yellow
        slider1.addTarget(self, action: #selector(handleslider1), for: .valueChanged)
        return slider1
    }()
    private let mylabel6:UILabel = {
        let label6 = UILabel()
        label6.text = "0"
        label6.textColor = .white
        label6.font = UIFont.boldSystemFont(ofSize:  20)
        return label6
    }()
    private let mylabel7:UILabel = {
        let label7 = UILabel()
        label7.text = "Mobile No"
        label7.textColor = .white
        label7.font = UIFont.boldSystemFont(ofSize:  17)
        label7.textAlignment = .center
        return label7
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
    private let mylabel8:UILabel = {
        let label8 = UILabel()
        label8.text = "Date Of Birth"
        label8.textColor = .white
        label8.font = UIFont.boldSystemFont(ofSize:  17)
        label8.textAlignment = .center
        return label8
    }()
    private let mydatepicker:UIDatePicker = {
        let dtpk = UIDatePicker()
        dtpk.datePickerMode = .dateAndTime
        dtpk.timeZone = TimeZone(secondsFromGMT: 0)
        dtpk.layer.cornerRadius = 10
        dtpk.backgroundColor = .white
        dtpk.layer.borderColor = UIColor.black.cgColor
        dtpk.layer.borderWidth = 2
        dtpk.layer.opacity = 0.6
        return dtpk
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
        view.addSubview(page)
        view.addSubview(myprogress)
        view.addSubview(mylabel1)
        view.addSubview(mylabel2)
        view.addSubview(mylabel3)
        view.addSubview(myslider)
        view.addSubview(mylabel4)
        view.addSubview(mylabel5)
        view.addSubview(myslider1)
        view.addSubview(mylabel6)
        view.addSubview(mylabel7)
        view.addSubview(myinput)
        view.addSubview(mylabel8)
        view.addSubview(mydatepicker)
        view.addSubview(btn)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        page.frame = CGRect(x: 152, y: 56, width: 50 , height: 50)
        myprogress.frame = CGRect(x: 15, y: 132, width: 313, height: 15)
        mylabel1.frame = CGRect(x: 99 , y: 172, width: 160, height: 23)
        mylabel2.frame = CGRect(x: 22 , y: 235, width:100, height: 21)
        mylabel3.frame = CGRect(x: 18 , y: 276, width:120, height: 21)
        myslider.frame = CGRect(x: 18 , y: 310, width: 280, height: 10)
        mylabel4.frame = CGRect(x: 312 , y: 305, width: 80, height: 21)
        mylabel5.frame = CGRect(x: 18 , y: 335, width:100, height: 21)
        myslider1.frame = CGRect(x: 18 , y: 370, width: 280, height: 10)
        mylabel6.frame = CGRect(x: 312 , y: 364, width: 80, height: 21)
        mylabel7.frame = CGRect(x: 22 , y: 394, width:83, height: 21)
        myinput.frame = CGRect(x: 22 , y: 425, width: 306, height: 40)
        mylabel8.frame = CGRect(x: 22 , y: 470, width: 120, height: 21)
         mydatepicker.frame = CGRect(x: 22 , y: 501, width: 306, height: 40)
         btn.frame = CGRect(x: 165  , y:577, width: 174, height: 58)
    }
    @objc func handleslider(){
        mylabel4.text = String(myslider.value)
    }
    @objc func handleslider1(){
        mylabel6.text = String(myslider.value)
    }
    @objc func nextpage(){
        let lp = RegPage3()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }
}

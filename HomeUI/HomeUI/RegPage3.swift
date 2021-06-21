//
//  RegPage3.swift
//  HomeUI
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RegPage3: UIViewController {
    private let page:UIPageControl = {
        let page = UIPageControl()
        page.numberOfPages = 2
        page.currentPage = 0
        return page
    }()
    private let myprogress:UIProgressView = {
        let myprogress = UIProgressView ()
        myprogress.setProgress(0.8, animated: true)
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
        label2.text = " Age"
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize:  20)
        return label2
    }()
    private let mystepper:UIStepper = {
        let step = UIStepper()
        step.maximumValue = 100
        step.minimumValue = 18
        step.backgroundColor = .white
        step.layer.cornerRadius = 20
        step.tintColor = .black
        
        step.addTarget(self, action: #selector(handlestep), for: .valueChanged)
        return step
    }()
    private let mylabel3:UILabel = {
        let label2 = UILabel()
        label2.text = "17"
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize:  25)
        return label2
    }()
    private let mylabel4:UILabel = {
        let label4 = UILabel()
        label4.text = " Country"
        label4.textColor = .white
        label4.font = UIFont.boldSystemFont(ofSize:  20)
        return label4
    }()
    private let btn:UIButton = {
        let bt = UIButton()
        bt.setTitle("Next", for: .normal)
        bt.backgroundColor = .black
        bt.layer.cornerRadius = 30
        bt.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        return bt
    }()
    private let  mypicker = UIPickerView()
    private let pickerdata = ["France","Spain","US","India","Maxico","Singapore","Italy"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = UIColor(red:0.449 ,green: 0.229 ,blue: 0.808 ,alpha: 1).cgColor
        view.addSubview(page)
        view.addSubview(myprogress)
        view.addSubview(mylabel1)
        view.addSubview(mylabel2)
        view.addSubview(mystepper)
        view.addSubview(mylabel3)
        view.addSubview(mylabel4)
        view.addSubview(mypicker)
        mypicker.dataSource = self
        mypicker.delegate = self
        mypicker.layer.cornerRadius = 10
        mypicker.backgroundColor = .white
        mypicker.layer.borderColor = UIColor.black.cgColor
        mypicker.layer.borderWidth = 2
        mypicker.layer.opacity = 0.6
        view.addSubview(btn)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        page.frame = CGRect(x: 152, y: 56, width: 50 , height: 50)
        myprogress.frame = CGRect(x: 15, y: 132, width: 313, height: 15)
        mylabel1.frame = CGRect(x: 99 , y: 172, width: 160, height: 23)
        mylabel2.frame = CGRect(x: 22 , y: 235, width:100, height: 21)
        mystepper.frame = CGRect(x: 15 , y: 282, width: 142, height: 40)
        mylabel3.frame = CGRect(x: 184 , y: 291, width:80, height: 21)
         mylabel4.frame = CGRect(x: 22 , y: 337, width:100, height: 21)
        mypicker.frame = CGRect(x: 15 , y: 373, width:313, height: 133)
         btn.frame = CGRect(x: 165  , y:577, width: 174, height: 58)
    }
    @objc func handlestep(){
        mylabel3.text = String(mystepper.value)
    }
    @objc func nextpage(){
        let lp = RegPage4()
        navigationController?.pushViewController(lp, animated: true)
        print("hello")
    }
}

extension  RegPage3:UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     return  pickerdata.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      return  pickerdata[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerdata[row])
    }
    
    
}

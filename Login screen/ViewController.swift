//
//  ViewController.swift
//  Login screen
//
//  Created by Jakub Němec on 14/10/2020.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setup()
    }

    var label = UILabel()
    var name = UILabel()
    var writeName = UITextField()
    var password = UILabel()
    var writePass = UITextField()
    var buttonPas = UIButton()

    func setup() {
        setupLabel()
        setupNameLogin()
        setupWriteName()
        setupPassword()
        setupWritePass()
        setupButton()
    }

    func setupLabel() {
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(200)
            make.trailing.equalToSuperview().offset(-70)
            make.leading.equalToSuperview().offset(55)
        }
        label.text = "Přihlašte se"
        label.textColor = UIColor(red: 61.0/255.0, green: 0.0/255.0, blue: 154.0/255.0, alpha: 1)
        label.font = UIFont(name: "Arial-BoldMT", size: 30.0)
    }

    func setupNameLogin(){
        view.addSubview(name)
        name.snp.makeConstraints { (make) in
            make.top.equalTo(label).offset(60)
            make.trailing.equalToSuperview().offset(-70)
            make.leading.equalToSuperview().offset(55)
        }
        name.text = "Uživatelské jméno"
        name.textColor = UIColor(red: 61.0/255.0, green: 0.0/255.0, blue: 154.0/255.0, alpha: 1)
        name.font = UIFont(name: "Arial-BoldMT", size: 15.0)
    }

    func setupWriteName(){
        view.addSubview(writeName)
        writeName.snp.makeConstraints { (make) in
            make.top.equalTo(name).offset(20)
            make.leading.equalToSuperview().offset(55)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(50)
            make.leftMargin.equalTo(105)
        }
        writeName.placeholder = "Vaše uživatelské jméno"
        writeName.layer.cornerRadius = 5.0
        writeName.layer.borderWidth = 1.0
        writeName.layer.borderColor = UIColor.blue.cgColor
        writeName.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15,height: writeName.frame.height))
        writeName.leftViewMode = .always
        writeName.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15,height: writeName.frame.height))
        writeName.rightViewMode = .always
    }

    func setupPassword(){
        view.addSubview(password)
        password.snp.makeConstraints { (make) in
            make.top.equalTo(writeName).offset(70)
            make.trailing.equalToSuperview().offset(-70)
            make.leading.equalToSuperview().offset(55)
        }
        password.text = "Heslo"
        password.textColor = UIColor(red: 61.0/255.0, green: 0.0/255.0, blue: 154.0/255.0, alpha: 1)
        password.font = UIFont(name: "Arial-BoldMT", size: 15.0)
    }

    func setupWritePass(){
        view.addSubview(writePass)
        writePass.snp.makeConstraints { (make) in
            make.top.equalTo(password).offset(20)
            make.leading.equalToSuperview().offset(55)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(50)
            make.leftMargin.equalTo(105)
        }
        writePass.placeholder = "Vaše heslo"
        writePass.layer.cornerRadius = 5.0
        writePass.layer.borderWidth = 1.0
        writePass.layer.borderColor = UIColor.blue.cgColor
        writePass.isSecureTextEntry = true
        writePass.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15,height: writePass.frame.height))
        writePass.leftViewMode = .always
        writePass.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15,height: writePass.frame.height))
        writePass.rightViewMode = .always
    }

    func setupButton(){
        view.addSubview(buttonPas)
        buttonPas.snp.makeConstraints { (make) in
            make.top.equalTo(writePass).offset(65)
            make.leading.equalToSuperview().offset(180)
            make.trailing.equalToSuperview().offset(-10)
            make.height.equalTo(10)
        }
        buttonPas.setTitle("Zapomenuté heslo", for: .normal)
        buttonPas.setTitleColor(UIColor(red: 61.0/255.0, green: 0.0/255.0, blue: 154.0/255.0, alpha: 1), for: .normal)
        buttonPas.backgroundColor = .clear
    }
}

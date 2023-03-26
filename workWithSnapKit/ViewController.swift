//
//  ViewController.swift
//  workWithSnapKit
//
//  Created by Parshkova Daria on 26.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    private func initialize() {
        view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
        let label = UILabel()
        label.text = "Welcome!🌈"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(150)
        }
        let extraLabel = UILabel()
        extraLabel.text = "About turn! March!Away with a talk-show. Silence, you speakers!Comrade mauser, you have the floor.Down with the law which for us Adam and Eve have left. We'll ruin the jade of the past."
        extraLabel.numberOfLines = 0
        view.addSubview(extraLabel)
        extraLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(50)
            make.top.equalTo(label).inset(50)
        }
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.setTitle("Get yor user name ->", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.bottom.equalToSuperview().inset(30)
            make.height.equalTo(40)
            
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    @objc func buttonTapped() {
        print("Hi!")
    }

}


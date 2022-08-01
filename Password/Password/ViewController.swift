//
//  ViewController.swift
//  Password
//
//  Created by Paweł Karabowicz on 31/07/2022.
//

import UIKit

    class ViewController: UIViewController {
        let stackView = UIStackView()
        let newPasswordTextField = PasswordTextField(plachHolderText: "New password")
        let criteriaView = PasswordCriteriaView(text: "uppercase letter (A-Z)")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            style()
            layout()
        }
    }
    
    extension ViewController {
        func style() {
            
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            stackView.spacing = 20
            
            newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
            criteriaView.translatesAutoresizingMaskIntoConstraints = false
        }
        func layout(){
            //stackView.addArrangedSubview(newPasswordTextField)
            stackView.addArrangedSubview(criteriaView)
            view.addSubview(stackView)
            
            NSLayoutConstraint.activate([
                stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
                view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2)
                
            ])

        }
    }



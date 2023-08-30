//
//  SplashViewController.swift
//  MariaDelivery
//
//  Created by Gabriel Garcia Pimentel Mendonca on 29/08/23.
//

import UIKit

class SplashViewController: UIViewController {
    
    let buttonGetStarted = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyViewCode()
    }
}

extension SplashViewController: ViewCodeProtocol {
    func buildViewHierarchy() {
        buttonGetStarted.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(buttonGetStarted)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalToSystemSpacingBelow: buttonGetStarted.bottomAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: buttonGetStarted.trailingAnchor, multiplier: 2),
            buttonGetStarted.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            buttonGetStarted.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func configureViews() {
        let firstColor = UIColor(red: 0.67, green: 0.59, blue: 0.95, alpha: 1.00)
        let secondColor = UIColor(red: 0.42, green: 0.37, blue: 0.73, alpha: 1.00)
        view.backgroundColor = .white
        
                
        buttonGetStarted.setTitle("Get started", for: .normal)
        buttonGetStarted.applyGradient(colors: [firstColor.cgColor, secondColor.cgColor], cornerRadius: 5)
        buttonGetStarted.titleLabel?.font = UIFont.poppins(.semiBold, size: 15)
        
        buttonGetStarted.glowEffect(withColor: firstColor)
    }
}

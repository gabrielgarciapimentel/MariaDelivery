//
//  ViewController.swift
//  MariaDelivery
//
//  Created by Gabriel Garcia Pimentel Mendonca on 29/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    let welcome = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        applyViewCode()
    }
}

extension ViewController: ViewCodeProtocol {
    func buildViewHierarchy() {
        welcome.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcome)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            welcome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcome.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func configureViews() {
        welcome.text = "WELCOME"
        welcome.font = UIFont.poppins(.bold, size: 36)
    }
    
    
}

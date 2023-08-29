//
//  ViewCodeProtocol.swift
//  MariaDelivery
//
//  Created by Gabriel Garcia Pimentel Mendonca on 29/08/23.
//

import Foundation

public protocol ViewCodeProtocol {
    func buildViewHierarchy()
    func setupConstraints()
    func configureViews()
}

public extension ViewCodeProtocol {
    func applyViewCode() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
}

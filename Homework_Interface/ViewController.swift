//
//  ViewController.swift
//  Homework_Interface
//
//  Created by Vlad on 12.11.23.
//

import UIKit

class ViewController: UIViewController, ViewDelegate {
    
    let customView = {
        let customView = View()
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        return customView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        view.addSubview(customView)
        
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
        
        
    }
    
    func displayTexts(firstText: String, secondText: String, thirdText: String) {
        print(firstText)
        print(secondText)
        print(thirdText)
    }
    
    
    
}

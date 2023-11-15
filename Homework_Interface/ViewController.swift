//
//  ViewController.swift
//  Homework_Interface
//
//  Created by Vlad on 12.11.23.
//

import UIKit

class ViewController: UIViewController, ViewDelegate, ButtonViewDelegate, NotesViewDelegate {
    
    let customView = {
        let customView = View()
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        return customView
    }()
    
    let notesView = {
        let notesView = NotesView()
        notesView.translatesAutoresizingMaskIntoConstraints = false
        
        return notesView
    }()
    
    let buttonView = {
        let buttonView = ButtonView()
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        
        return buttonView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        customView.delegate = self
        buttonView.delegate = self
        notesView.delegate = self
        view.addSubview(customView)
        view.addSubview(notesView)
        view.addSubview(buttonView)
        
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            buttonView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buttonView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            buttonView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttonView.heightAnchor.constraint(equalToConstant: 70),
            
            notesView.topAnchor.constraint(equalTo: customView.bottomAnchor),
            notesView.bottomAnchor.constraint(equalTo: buttonView.topAnchor),
            notesView.trailingAnchor.constraint(equalTo: customView.trailingAnchor),
            notesView.leadingAnchor.constraint(equalTo: customView.leadingAnchor)
        ])
        
        
    }
    
    func displayTexts(firstText: String, secondText: String, thirdText: String) {
        print(firstText)
        print(secondText)
        print(thirdText)
    }
    
    func buttonSavePressed(_ sender: ButtonView) {
        print(customView.firstTextField.text ?? "")
        print(customView.middleTextField.text ?? "")
        print(customView.lastTextField.text ?? "")
    }
    
    func buttonCancelPressed(_ sender: ButtonView) {
        customView.firstTextField.text = ""
        customView.middleTextField.text = ""
        customView.lastTextField.text = ""
        notesView.notes.text = "Notes: "
    }
   
    func buttonClearPressed(_ sender: ButtonView) {
        notesView.notes.text = "Notes: "
    }
    
    func displayTextView(text: String) {
        print(text)
    }
    
    
}

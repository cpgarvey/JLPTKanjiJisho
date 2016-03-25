//
//  SearchViewController.swift
//  JLPTKanjiJisho
//
//  Created by Chris Garvey on 3/23/16.
//  Copyright © 2016 Chris Garvey. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITextFieldDelegate {

    // MARK: - Properties
    
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Configure the UI */
        configureUI()
        
        /* Set Text Field Delegate */
        searchTextField.delegate = self
        
        /* Enable Tap Gesture Recognizer */
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SearchViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
        
    }

    
    // MARK: - Actions
    
    @IBAction func search(sender: UIButton) {
        
        // TO DO: add search functionality
        
    }
    
    
    // MARK: - Helper Functions
    
    /* Dismiss keyboard if user touches outside the text field */
    func tap(gesture: UITapGestureRecognizer) {
        searchTextField.resignFirstResponder()
    }
    
    func configureUI() {
        /* Configure background gradient */
        view.backgroundColor = UIColor.clearColor()
        let colorTop = ColorScheme.mauve.CGColor
        let colorBottom = ColorScheme.candyPink.CGColor
        let backgroundGradient = CAGradientLayer()
        backgroundGradient.colors = [colorTop, colorBottom]
        backgroundGradient.locations = [0.0, 1.0]
        backgroundGradient.frame = view.frame
        view.layer.insertSublayer(backgroundGradient, atIndex: 0)

        /* Set Element Colors */
        appTitle.textColor = ColorScheme.offWhite
        searchTextField.textColor = ColorScheme.offWhite
        searchTextField.backgroundColor = ColorScheme.lightPink
    }
}


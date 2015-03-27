//
//  KeyboardViewController.swift
//  keyboardAlpha
//
//  Created by Clojure on 3/16/15.
//  Copyright (c) 2015 cmm101. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    var keyboardView:UIView!
    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }
    
    func loadInterface() {
        // load the nib file
        var keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        // instantiate the view
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as UIView
        
        // add the interface to the main view
        view.addSubview(keyboardView)
        
        // copy the background color
        view.backgroundColor = keyboardView.backgroundColor
    }

    override func viewDidLoad() {
        loadInterface()
       // super.viewDidLoad()
    
        // Perform custom UI setup here
        //self.nextKeyboardButton = UIButton.buttonWithType(.System) as UIButton
    
        //self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        //self.nextKeyboardButton.sizeToFit()
        //self.nextKeyboardButton.setTranslatesAutoresizingMaskIntoConstraints(false)
    
        //self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        //self.view.addSubview(self.nextKeyboardButton)
    
        //var nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        //var nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        //self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        var proxy = self.textDocumentProxy as UITextDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }

}

//
//  AlgorithmsController.swift
//  Cade_CSP
//
//  Created by Barnes, Cade on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmsViewController: UIViewController
{
   
    @IBOutlet weak var agorithmText: UITextView!
    
    private func setupAlgorithms() -> Void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First,Open the Swift project and it will bring up an menu."
        let stepTwo :String = "Second,  You will then choose the selection: Create a new Xcode project."
        let stepThree :String = "You will then choose the single view app."
        let stepFour :String = "Next it will bring up another menu. Just put in the project name and continue."
        let stepFive :String = " Next you will save it to a folder so that then you can access it from other ways."
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let atribuesDictionary = [NSAttributedStringey.font : algorithmText.font]
        let fullAttributeString = NSMutableAttributdString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "<3"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringtep.addAttributes([NSAttributedStringKey.paragraphStyle : paragaphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do anadditional setup after loading the view.
    }
   // private func setupAlgrithm() -> Void
}

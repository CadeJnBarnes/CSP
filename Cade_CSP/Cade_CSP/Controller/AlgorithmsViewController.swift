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
   
    @IBOutlet weak var algorithmText: UITextView!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First,Open the Swift project and it will bring up an menu."
        let stepTwo :String = "Second,  You will then choose the selection: Create a new Xcode project."
        let stepThree :String = "You will then choose the single view app."
        let stepFour :String = "Next it will bring up another menu. Just put in the project name and continue."
        let stepFive :String = " Next you will save it to a folder so that then you can access it from other ways."
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let atributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributeString = NSMutableAttributedString(string: algorithm, attributes: atributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "*"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributeString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributeString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do anadditional setup after loading the view.
    }
   // private func setupAlgrithm() -> Void
}

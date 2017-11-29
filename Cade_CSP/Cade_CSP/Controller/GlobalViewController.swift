//
//  GlobalController.swift
//  Cade_CSP
//
//  Created by Barnes, Cade on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

public class GlobalController: UIViewController
{
   
    private var imageCounter : Int = 0
    
    @IBOutlet weak var imageFrame: UIImageView!
    
    @IBOutlet weak var imageSketch: UIImageView!
    
    @IBOutlet weak var personal: UILabel!
   
    @IBOutlet weak var appDoes: UILabel!
    
    @IBOutlet weak var Description: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup() -> Void
    {
        imageFrame.image = UIImage(named: "Picture1")
        personal.text = "This relates to me personally because I hate seeing people that don't have something that I take for granted. I am so lucky to have power and water right at my fingertips, where these people don't have anything. So I want to help them in whatever way I can."
        Description.text = "As I said earlier this app is going to point people towards safe water. They way this app is going to do that is by using a GPS and other's input. People will put into the device where clean water is and then others will know where it is located."
        appDoes.text = "This app is here to help raise awarness of how very much of the world does not have access to water, so this app will help point people in a direction where water is nearby and is safe enough to drink."
        imageSketch.image = UIImage(named: "Picture2")
        
    }
    public func switchImage() -> Void
    {
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "Picture1")
        }
        else
        {
            imageFrame.image = UIImage(named: "Picture2")
        }
    }
}


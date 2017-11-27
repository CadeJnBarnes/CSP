//
//  AbstractionController.swift
//  Cade_CSP
//
//  Created by Barnes, Cade on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{
    //MARK: Array of subviews
    private (set) lazy var orderedAbstrationViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate"),
        ]
    }()
    
    //Helper method to retrieve the correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    
    
    override public func viewDidLoad()
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
}

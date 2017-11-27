//
//  DebugDuck.swift
//  Cade_CSP
//
//  Created by Barnes, Cade on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
public class DebugDuck : Cleanable
{
    private var duckColor :UIColor
    //MARK: Cleanable data member
    public var cleanState: Bool
    
    public init()
    {
        self.duckColor = UIColor()
        self.cleanState = false
    }
    
    //MARK:- Cleanable methods
    public func clean() -> Void
    {
        print("I am dirty")
        cleanState = true
    }
    
    public func isCleaned() -> Bool
    {
        if(cleanState)
        {
            print("cleaned")
        }
        else
        {
            print("Dirty")
        }
        return cleanState
    }
}

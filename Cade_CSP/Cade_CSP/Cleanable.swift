//
//  Cleanable.swift
//  Cade_CSP
//
//  Created by Barnes, Cade on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation

public protocol Cleanable
{
    var cleanState : Bool {get set}
    func clean() -> Void
    func isCleaned() ->Bool
}

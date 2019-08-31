//
//  DetailRouter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

protocol DetailRouter {
    
    var presenter: DetailPresenter? { get set }
    
    func showAlert(_ message:String)
    
}

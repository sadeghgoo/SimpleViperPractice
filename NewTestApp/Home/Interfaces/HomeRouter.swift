//
//  HomeRouter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

protocol HomeRouter {
    
    var presenter: HomePresenter? { get set }
    
    func showDetailVC(_ object:String)
}

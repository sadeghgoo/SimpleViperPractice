//
//  DetailView.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

protocol DetailView: class {
    
    var presenter: DetailPresenter? { get set }

    func updatelabel(_ object:String)
}

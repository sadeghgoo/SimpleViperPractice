//
//  DetailPresenter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation

protocol DetailPresenter: class {
    
    var router: DetailRouter? { get set }
    var interactor: DetailInteractor? { get set }
    var view: DetailView? { get set }
    
    func viewDidLoad()
    func showALert(_ message:String)
}

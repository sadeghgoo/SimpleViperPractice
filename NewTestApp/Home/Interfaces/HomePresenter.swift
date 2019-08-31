//
//  HomePresenter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation

protocol HomePresenter: class {
    
    var router: HomeRouter? { get set }
    var interactor: HomeInteractor? { get set }
    var view: HomeView? { get set }
    
    func buttonTapped(_ text:String)
    func showAlert(_ messsage:String)
    
    }

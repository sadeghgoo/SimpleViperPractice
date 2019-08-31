//
//  DetailDefaultPresenter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation

class DetailDefaultPresenter {
    
    var router: DetailRouter?
    var interactor: DetailInteractor?
    weak var view: DetailView?
    
    var textfield:String!
    
    init(_ object:String) {
        textfield = object
    }
}

extension DetailDefaultPresenter: DetailPresenter {
    func showALert(_ message: String) {
        self.router?.showAlert(message)

    }
    
    func viewDidLoad() {
        view?.updatelabel(textfield)
    }
    

}

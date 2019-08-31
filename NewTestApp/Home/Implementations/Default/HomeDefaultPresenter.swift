//
//  HomeDefaultPresenter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class HomeDefaultPresenter {
    
    var router: HomeRouter?
    var interactor: HomeInteractor?
    weak var view: HomeView?
    
    func showSimpelAlert(){
        let alert = UIAlertController(title: "Hi", message: nil, preferredStyle: UIAlertController.Style.alert)

        let dismis = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { action in
            //presenter.dismissDidTap()
        }
        alert.addAction(dismis)



    }
}

extension HomeDefaultPresenter: HomePresenter {
    func showAlert(_ messsage: String) {
        
    }
    
    
    func buttonTapped(_ text: String) {
       self.router?.showDetailVC(text)
    }
    

}

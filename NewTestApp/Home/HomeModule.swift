//
//  HomeDefaultBuilder.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class HomeModule {

    func buildDefault() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeStoryBoard") as! HomeDefaultView
        
        let interactor = HomeDefaultInteractor()
        let presenter = HomeDefaultPresenter()
        let router = HomeDefaultRouter()

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        interactor.presenter = presenter

        router.presenter = presenter
        router.viewController = view
        
        return view
    }
}

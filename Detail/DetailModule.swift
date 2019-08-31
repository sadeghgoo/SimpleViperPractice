//
//  DetailDefaultBuilder.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class DetailModule {

    func buildDefault(_ object:String) -> UIViewController {
        let view = UIStoryboard(name: "Detail", bundle: nil).instantiateViewController(identifier: "DetailStoryboard") as! DetailDefaultView
        
        let interactor = DetailDefaultInteractor()
        let presenter = DetailDefaultPresenter(object)
        let router = DetailDefaultRouter()

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

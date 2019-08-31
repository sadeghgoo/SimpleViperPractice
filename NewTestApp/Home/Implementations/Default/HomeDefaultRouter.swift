//
//  HomeDefaultRouter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class HomeDefaultRouter {

    weak var presenter: HomePresenter?
    weak var viewController: UIViewController?
    
    
}

extension HomeDefaultRouter: HomeRouter {
    
    func showDetailVC(_ object: String) {
        let detailVC  = DetailModule().buildDefault(object)
        viewController?.show(detailVC, sender: self)
        
    }
    

}

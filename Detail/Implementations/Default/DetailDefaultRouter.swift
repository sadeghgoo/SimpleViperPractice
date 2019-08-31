//
//  DetailDefaultRouter.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class DetailDefaultRouter {

    weak var presenter: DetailPresenter?
    weak var viewController: UIViewController?
    
    
    func showHiAlert(_ message:String){
        let alert = UIAlertController(title: "Hi  ", message: "Your label text is  : \(message)", preferredStyle: UIAlertController.Style.alert)
        
        let button = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(button)
        
        viewController?.show(alert, sender: self)
    }
}

extension DetailDefaultRouter: DetailRouter {
    func showAlert(_ message: String) {
        self.showHiAlert(message)

    }
}

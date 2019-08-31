//
//  HomeDefaultView.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class HomeDefaultView: UIViewController {
    
    
    var presenter: HomePresenter?
    
    
    @IBOutlet weak var txtField:UITextField!
    
    @IBAction func passData(_ sender:UIButton){
        self.presenter?.buttonTapped(txtField.text ?? "")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
}

extension HomeDefaultView: HomeView {

}

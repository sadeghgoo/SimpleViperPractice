//
//  DetailDefaultView.swift
//  NewTestApp
//
//  Created by sadegh on 8/31/19.
//

import Foundation
import UIKit

class DetailDefaultView: UIViewController {
    
    var presenter: DetailPresenter?

    @IBOutlet weak var textLbl:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.presenter?.viewDidLoad()
    }
    @IBAction func showAlert(_ sender: Any) {
        self.presenter?.showALert(textLbl.text!)
        
    }
}

extension DetailDefaultView: DetailView {
    
    func updatelabel(_ object: String) {
        self.textLbl.text = object
    }
}

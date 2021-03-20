//
//  ProductDetailViewController.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 21/02/21.
//

import UIKit

class ProductDetailViewController: UIViewController {

    private let userData: UserData
    @IBOutlet weak var productName: UILabel!
    
    init(userData: UserData) {
        self.userData = userData
        super.init(nibName: String(describing: ProductDetailViewController.self), bundle: nil)
    }
    
    deinit {
        print(String(describing: ProductDetailViewController.self))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productName.text = userData.value?.data.string
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

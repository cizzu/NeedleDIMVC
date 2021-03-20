//
//  ProductListViewController.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 21/02/21.
//

import UIKit

class ProductListViewController: UIViewController {

    private let productDetailBuilder: ProductDetailBuilder
    
    init(productDetailBuilder: ProductDetailBuilder) {
        self.productDetailBuilder = productDetailBuilder
        super.init(nibName: String(describing: ProductListViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print(String(describing: ProductListViewController.self))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToProductDetail(_ sender: UIButton) {
        self.navigationController?.pushViewController(productDetailBuilder.productDetailViewController, animated: true)
    }
}

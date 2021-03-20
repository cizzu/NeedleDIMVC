//
//  CategoriesViewController.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 21/02/21.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    private let productListBuilder: ProductListBuilder

    init(productListBuilder: ProductListBuilder) {
        self.productListBuilder = productListBuilder
        super.init(nibName: String(describing: CategoriesViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit {
        print(String(describing: CategoriesViewController.self))
    }
    
    @IBAction func goToProductList(_ sender: UIButton) {
        self.navigationController?.pushViewController(productListBuilder.productListViewController, animated: true)
    }
}

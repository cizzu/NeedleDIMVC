//
//  DashboardViewController.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 21/02/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    private var userData: MutableUserData
    private let productDetailBuilder: ProductDetailBuilder
    private let productListBuilder: ProductListBuilder
    private let categoriesBuilder: CategoriesBuilder
    
    init(userData: MutableUserData, productDetailBuilder: ProductDetailBuilder, productListBuilder: ProductListBuilder, categoriesBuilder: CategoriesBuilder) {
        self.userData = userData
        self.productDetailBuilder = productDetailBuilder
        self.productListBuilder = productListBuilder
        self.categoriesBuilder = categoriesBuilder
        super.init(nibName: String(describing: DashboardViewController.self), bundle: nil)
        self.userData.set(value: "Hello From Dashboard")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToCategories(_ sender: UIButton) {
        self.navigationController?.pushViewController(categoriesBuilder.categoriesViewController, animated: true)
    }
        
    @IBAction func goToProductList(_ sender: UIButton) {
        self.navigationController?.pushViewController(productListBuilder.productListViewController, animated: true)
    }
    
    @IBAction func goToProductDetail(_ sender: UIButton) {
        self.navigationController?.pushViewController(productDetailBuilder.productDetailViewController, animated: true)
    }

}

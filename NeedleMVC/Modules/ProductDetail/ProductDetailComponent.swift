//
//  ProductDetailComponent.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 11/03/21.
//

import NeedleFoundation
import UIKit

protocol ProductDetailDependency: Dependency {
    var userData: UserData { get }
}

protocol ProductDetailBuilder {
    var productDetailViewController: UIViewController { get }
}

class ProductDetailComponent: Component<ProductDetailDependency>, ProductDetailBuilder {
    var productDetailViewController: UIViewController {
        return ProductDetailViewController(userData: dependency.userData)
    }
}

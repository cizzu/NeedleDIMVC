//
//  ProductListComponent.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 11/03/21.
//

import NeedleFoundation
import UIKit

protocol ProductListBuilder {
    var productListViewController: UIViewController { get }
}

class ProductListComponent: Component<EmptyDependency>, ProductListBuilder {
    
    var productListViewController: UIViewController {
        return ProductListViewController(productDetailBuilder: productDetailComponent)
    }
    
    var productDetailComponent: ProductDetailComponent {
        return ProductDetailComponent(parent: self)
    }
}

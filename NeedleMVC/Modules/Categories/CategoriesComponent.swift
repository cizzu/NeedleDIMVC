//
//  CategoriesComponent.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 11/03/21.
//

import NeedleFoundation
import UIKit

protocol CategoriesBuilder {
    var categoriesViewController: UIViewController { get }
}

class CategoriesComponent: Component<EmptyDependency>, CategoriesBuilder {
    
    var categoriesViewController: UIViewController {
        return CategoriesViewController(productListBuilder: productListComponent)
    }
    
    var productListComponent: ProductListComponent {
        return ProductListComponent(parent: self)
    }
}

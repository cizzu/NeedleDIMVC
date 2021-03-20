//
//  DashboardComponent.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 11/03/21.
//

import NeedleFoundation
import UIKit

class DashboardComponent: BootstrapComponent {
    
    var userData: UserData {
        return mutableUserData
    }
    
    var mutableUserData: MutableUserData {
        return shared {
            UserDataImplementor()
        }
    }
    
    var dashboardViewController: UIViewController {
        return DashboardViewController(userData: mutableUserData, productDetailBuilder: productDetailComponent, productListBuilder: productListComponent, categoriesBuilder: categories)
    }
    
    var categories: CategoriesComponent {
        return CategoriesComponent(parent: self)
    }
    
    var productListComponent: ProductListComponent {
        return ProductListComponent(parent: self)
    }
    
    var productDetailComponent: ProductDetailComponent {
        return ProductDetailComponent(parent: self)
    }
    
}

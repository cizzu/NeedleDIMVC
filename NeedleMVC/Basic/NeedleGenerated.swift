

import NeedleFoundation
import UIKit

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Registration

public func registerProviderFactories() {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent->ProductDetailComponent") { component in
        return ProductDetailDependencyd294f3352ac822efa8daProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent->ProductListComponent->ProductDetailComponent") { component in
        return ProductDetailDependencyb2da3fa44ebb138910f6Provider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent->CategoriesComponent->ProductListComponent->ProductDetailComponent") { component in
        return ProductDetailDependency7c08182d024a5012c4b0Provider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent->ProductListComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent->CategoriesComponent->ProductListComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->DashboardComponent->CategoriesComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    
}

// MARK: - Providers

private class ProductDetailDependencyd294f3352ac822efa8daBaseProvider: ProductDetailDependency {
    var userData: UserData {
        return dashboardComponent.userData
    }
    private let dashboardComponent: DashboardComponent
    init(dashboardComponent: DashboardComponent) {
        self.dashboardComponent = dashboardComponent
    }
}
/// ^->DashboardComponent->ProductDetailComponent
private class ProductDetailDependencyd294f3352ac822efa8daProvider: ProductDetailDependencyd294f3352ac822efa8daBaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(dashboardComponent: component.parent as! DashboardComponent)
    }
}
/// ^->DashboardComponent->ProductListComponent->ProductDetailComponent
private class ProductDetailDependencyb2da3fa44ebb138910f6Provider: ProductDetailDependencyd294f3352ac822efa8daBaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(dashboardComponent: component.parent.parent as! DashboardComponent)
    }
}
/// ^->DashboardComponent->CategoriesComponent->ProductListComponent->ProductDetailComponent
private class ProductDetailDependency7c08182d024a5012c4b0Provider: ProductDetailDependencyd294f3352ac822efa8daBaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(dashboardComponent: component.parent.parent.parent as! DashboardComponent)
    }
}

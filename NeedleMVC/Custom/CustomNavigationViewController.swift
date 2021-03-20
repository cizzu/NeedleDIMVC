//
//  CustomNavigationViewController.swift
//  NeedleMVC
//
//  Created by Afriyandi Setiawan on 11/03/21.
//

import UIKit

class CustomNavigationViewController: UINavigationController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let hide = viewController == viewControllers.first
        self.setNavigationBarHidden(hide, animated: true)
    }

}

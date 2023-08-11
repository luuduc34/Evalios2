//
//  NavBarController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "CustomDarkGray")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.compactAppearance = appearance
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
    }
}

//
//  TabBarViewController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "CustomDarkGray")
        let selectedColor: UIColor = UIColor(named: "CustomYellow")!
        appearance.stackedLayoutAppearance.selected.iconColor = selectedColor
        appearance.stackedLayoutAppearance.selected.titleTextAttributes =
        [.foregroundColor: selectedColor]
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
}

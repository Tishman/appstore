//
//  ViewController.swift
//  AppStore
//
//  Created by Роман on 25/04/2019.
//  Copyright © 2019 Роман. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

	override func viewDidLoad() {
		super.viewDidLoad()
		self.setup()
	}

	private func setup() {
		self.viewControllers = [createNavViewController(viewController: TodayViewController(),
														tabBarTitle: MainKeys.TabBar.Title.todayTitle,
														navBarTitle: MainKeys.NavBar.todayTitle,
														image: MainKeys.TabBar.Image.todayImage),
								createNavViewController(viewController: AppViewController(),
														tabBarTitle: MainKeys.TabBar.Title.appsTitle,
														navBarTitle: MainKeys.NavBar.appsTitle,
														image: MainKeys.TabBar.Image.appsImage),
								createNavViewController(viewController: SearchViewController(),
														tabBarTitle: MainKeys.TabBar.Title.searcTitle,
														navBarTitle: MainKeys.NavBar.searchTitle,
														image: MainKeys.TabBar.Image.searchImage)
		]
	}
	
	private func createNavViewController(viewController: UIViewController, tabBarTitle: String, navBarTitle: String, image: String) -> UINavigationController{
		let navController = UINavigationController(rootViewController: viewController)
		viewController.navigationItem.title = navBarTitle
		viewController.view.backgroundColor = .white
		navController.tabBarItem.title = tabBarTitle
		navController.tabBarItem.image = UIImage(named: image)
		navController.navigationBar.prefersLargeTitles = true
		return navController
	}
}


//
//  AppViewController.swift
//  AppStore
//
//  Created by Роман on 02/05/2019.
//  Copyright © 2019 Роман. All rights reserved.
//

import UIKit

class AppViewController: UICollectionViewController {
	
	private let cellId = "SearchResult"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		collectionView.backgroundColor = .white
		collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: cellId)
		
	}
	
	init() {
		super.init(collectionViewLayout: UICollectionViewLayout())
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
		return cell
	}
}

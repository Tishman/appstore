//
//  SearchResultCell.swift
//  AppStore
//
//  Created by Роман on 02/05/2019.
//  Copyright © 2019 Роман. All rights reserved.
//

import Foundation
import UIKit

final class SearchResultCell: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.backgroundColor = .green
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

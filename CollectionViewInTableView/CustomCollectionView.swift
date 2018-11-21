//
//  CustomCollectionView.swift
//  CollectionViewInTableView
//
//  Created by Russell Quinn on 11/21/18.
//  Copyright © 2018 False Vacuum Industries. All rights reserved.
//

import UIKit

class CustomCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.backgroundColor = .gray
        self.isScrollEnabled = false
        self.allowsSelection = true
        self.allowsMultipleSelection = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override func layoutSubviews() {
        super.layoutSubviews()
        invalidateIntrinsicContentSize()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: collectionViewLayout.collectionViewContentSize.height)
    }
}

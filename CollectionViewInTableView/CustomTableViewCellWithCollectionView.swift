//
//  CustomTableViewCellWithCollectionView.swift
//  CollectionViewInTableView
//
//  Created by Russell Quinn on 11/21/18.
//  Copyright © 2018 False Vacuum Industries. All rights reserved.
//

import UIKit
import SnapKit

class CustomTableViewCellWithCollectionView: UITableViewCell {

     let collectionViewCellReuseIdentifier = "UICollectionViewCell"
    
    lazy var collectionView: CustomCollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 17.0
        layout.minimumInteritemSpacing = 8.0
        layout.sectionInset = UIEdgeInsets(top: 17.0, left: 32.0, bottom: 17.0, right: 32.0)
        layout.itemSize = CGSize(width: 80.0, height: 163.0)
        
        return CustomCollectionView(frame: .zero, collectionViewLayout: layout)
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .green
        
        contentView.addSubview(collectionView)
        
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: collectionViewCellReuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomTableViewCellWithCollectionView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCellReuseIdentifier, for: indexPath)
        cell.backgroundColor = .yellow
        return cell
    }
}

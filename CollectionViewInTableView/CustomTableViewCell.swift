//
//  CustomTableViewCell.swift
//  CollectionViewInTableView
//
//  Created by Russell Quinn on 11/21/18.
//  Copyright © 2018 False Vacuum Industries. All rights reserved.
//

import UIKit

class CustomView : UIView {
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 200.0)
    }
}

class CustomTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .red
        
        let view = CustomView(frame: .zero)
        self.contentView.addSubview(view)
        
        view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

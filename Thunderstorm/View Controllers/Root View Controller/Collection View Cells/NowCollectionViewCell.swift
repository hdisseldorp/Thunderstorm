//
//  NowCollectionViewCell.swift
//  Thunderstorm
//
//  Created by Harry Disseldorp on 4/12/17.
//  Copyright © 2017 DisOne. All rights reserved.
//

import UIKit

class NowCollectionViewCell: UICollectionViewCell {

  // MARK: - Type Properties
  
  static let reuseIdentifier = "NowCollectionViewCell"
  
  // MARK: - Properties
  
  let viewController: NowViewController
  
  // MARK: - Initialization
  
  override init(frame: CGRect) {
    // Initialize View Controller
    viewController = NowViewController()
    
    super.init(frame: frame)
    
    setupViewController()
  }
  
  required init?(coder aDecoder: NSCoder) {
    // Initialize View Controller
    viewController = NowViewController()
    
    super.init(coder: aDecoder)
    
    setupViewController()
  }
  
  private func setupViewController() {
    // Configure View Controller
    viewController.view.backgroundColor = .green
    
    // Add View Controller to Content View
    contentView.addSubview(viewController.view)
    
    if let view = viewController.view {
      view.translatesAutoresizingMaskIntoConstraints = false
      
      view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0.0).isActive = true
      view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0.0).isActive = true
      view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0.0).isActive = true
      view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0.0).isActive = true
    }
  }
  
}

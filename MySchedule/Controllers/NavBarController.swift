//
//  NavBarController.swift
//  MySchedule
//
//  Created by Oleg Popov on 14.11.2022.
//

import Foundation
import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
       
        
        navigationBar.addBottomBorder(with: .darkGray, with: 1)
        
    }
}

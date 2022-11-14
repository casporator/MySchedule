//
//  Extentions.swift
//  MySchedule
//
//  Created by Oleg Popov on 14.11.2022.
//

import Foundation
import UIKit

extension UIView {
    //MARK: добавляю линию под навбаром
    func addBottomBorder(with color: UIColor, with height: CGFloat) {
        let seporator = UIView()
        seporator.backgroundColor = color
        seporator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        seporator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(seporator)
    }
}

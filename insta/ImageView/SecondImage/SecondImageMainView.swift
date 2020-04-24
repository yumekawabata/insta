//
//  SecondImageMainView.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/24.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol SecondImageMainViewDelegate: NSObjectProtocol{
}
extension SecondImageMainViewDelegate {
}
// MARK: - Property
class SecondImageMainView: BaseView {
    weak var delegate: SecondImageMainViewDelegate? = nil
}
// MARK: - Life cycle
extension SecondImageMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension SecondImageMainView {
}
// MARK: - method
extension SecondImageMainView {
}


//
//  PostMainView.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/23.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol PostMainViewDelegate: NSObjectProtocol{
}
extension PostMainViewDelegate {
}
// MARK: - Property
class PostMainView: BaseView {
    weak var delegate: PostMainViewDelegate? = nil
    @IBOutlet weak var textFiled: UITextField!
}
// MARK: - Life cycle
extension PostMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension PostMainView {
}
// MARK: - method
extension PostMainView {
}


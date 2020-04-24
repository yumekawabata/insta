//
//  MypageMainView.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/23.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol MypageMainViewDelegate: NSObjectProtocol{
}
extension MypageMainViewDelegate {
}
// MARK: - Property
class MypageMainView: BaseView {
    weak var delegate: MypageMainViewDelegate? = nil
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileButton: UIButton!
}
// MARK: - Life cycle
extension MypageMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension MypageMainView {
}
// MARK: - method
extension MypageMainView {
     func  setLayout() {
        profileButton.layer.borderWidth = 1
        profileButton.layer.borderColor = #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1)
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }
}


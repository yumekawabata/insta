//
//  TopMainTableViewcell.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/21.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainTableViewcellDelegate: NSObjectProtocol{
}
extension TopMainTableViewcellDelegate {
}
// MARK: - Property
class TopMainTableViewcell: BaseTableViewCell {
    weak var delegate: TopMainTableViewcellDelegate? = nil

    @IBOutlet weak var topImageView: UIImageView!
    
    @IBOutlet weak var profileImageView: UIImageView!
}
// MARK: - Life cycle
extension TopMainTableViewcell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension TopMainTableViewcell {
}
// MARK: - method
extension TopMainTableViewcell {
    func setLayout(){
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        
    }
}


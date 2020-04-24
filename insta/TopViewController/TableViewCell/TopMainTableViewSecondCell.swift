//
//  TopMainTableViewSecondCell.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/21.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainTableViewSecondCellDelegate: NSObjectProtocol{
}
extension TopMainTableViewSecondCellDelegate {
}
// MARK: - Property
class TopMainTableViewSecondCell: BaseTableViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
 
    
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
}
// MARK: - Life cycle
extension TopMainTableViewSecondCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension TopMainTableViewSecondCell {
}
// MARK: - method
extension TopMainTableViewSecondCell {
    func updateCell(postModel: PostModel){
        descriptionLabel.text = postModel.description
    }
    func setLayout(){
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
    }

}


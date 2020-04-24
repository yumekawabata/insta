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
    
    @IBOutlet weak var discriptionLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension SecondImageMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension SecondImageMainView {
}
// MARK: - method
extension SecondImageMainView {
    
    func getModel(postModel: PostModel){
        self.postModel = postModel
        updateView(postModel: postModel)
    }
    func updateView(postModel: PostModel){
    discriptionLabel.text = postModel.description
        
    }
    func setLayout(){
        profileImageView.layer.cornerRadius =  profileImageView.frame.height / 2
    }
}


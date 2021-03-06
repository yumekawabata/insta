//
//  EditMainView.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/27.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol EditMainViewDelegate: NSObjectProtocol{
    func touchedDeleteButton()
}
extension EditMainViewDelegate {
}
// MARK: - Property
class EditMainView: BaseView {
    weak var delegate: EditMainViewDelegate? = nil
    @IBOutlet weak var textField: UITextField!
    @IBAction func touchedDeleteButton(_ sender: UIButton) {
        if let delegate = delegate {delegate.touchedDeleteButton()}
        
    }
}
// MARK: - Life cycle
extension EditMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension EditMainView {
}
// MARK: - method
extension EditMainView {
    func updateView(postModel: PostModel){
        textField.text = postModel.description
    }
}


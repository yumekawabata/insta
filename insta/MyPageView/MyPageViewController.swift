//
//  MyPageViewController.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/21.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class MyPageViewController: BaseViewController {

    @IBOutlet weak var myPageHeaderView: HeaderView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileButton: UIButton!
}
// MARK: - Life cycle
extension MyPageViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
        setLayout()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension MyPageViewController {
}
// MARK: - method
extension MyPageViewController {
    func setHeaderView(){
        myPageHeaderView.setCenter(text: "Mypage")
    
    }
    func setLayout(){
        profileButton.layer.borderWidth = 1
        profileButton.layer.borderColor = #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1)
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        
    }
}



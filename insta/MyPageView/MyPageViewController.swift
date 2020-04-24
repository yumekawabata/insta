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
}
// MARK: - Life cycle
extension MyPageViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
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

}



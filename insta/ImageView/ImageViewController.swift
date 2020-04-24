//
//  ImageViewController.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/21.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class ImageViewController: BaseViewController {
    @IBOutlet weak var imageHeaderView: HeaderView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
}
// MARK: - Life cycle
extension ImageViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
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
extension ImageViewController {
}
extension ImageViewController: HeaderViewDelegate{
    func touchedLeftButton(_ sender: UIButton) {
        let topViewController = TopViewController()
        navigationController?.pushViewController(topViewController, animated: true)
        animatorManager.navigationType = .slide_pop
    }
}

// MARK: - method
extension ImageViewController {
    func setDelegate(){
    imageHeaderView.delegate = self
    }
    func setHeaderView(){
        imageHeaderView.setCenter(text: "詳細画面", fontSize: 16, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        imageHeaderView.setLeft(text: "←", fontSize: 16, color: #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1))
    }
    func setLayout(){
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
    }
}



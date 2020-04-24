//
//  postViewController.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/22.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class postViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!

    @IBOutlet weak var postMainView: PostMainView!
}
// MARK: - Life cycle
extension postViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
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
extension postViewController {
}
extension postViewController: HeaderViewDelegate{
    func touchedLeftButton(_ sender: UIButton) {
        let topViewController = TopViewController()
        navigationController?.pushViewController(topViewController, animated: true)
        animatorManager.navigationType = .slide_pop
    }
    func touchedRightButton(_ sender: UIButton) {
    
        let postModel: PostModel = PostModel()
       
        if let text = postMainView.textFiled.text {
        postModel.description = text
        }
    
        PostModel.create(request: postModel){
        }
        
        let topViewController = TopViewController()
        navigationController?.pushViewController(topViewController, animated: true)
        animatorManager.navigationType = .slide_pop
    }
}

// MARK: - method
extension postViewController {
    func setDelegate(){
        headerView.delegate = self
    }
    
    func setHeaderView(){
        headerView.setCenter(text: "新規投稿", fontSize: 16, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        headerView.setLeft(text: "キャンセル", fontSize: 16, color: #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1))
        headerView.setRight(text: "シェア", fontSize: 16, color: #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1))
    }
    
}



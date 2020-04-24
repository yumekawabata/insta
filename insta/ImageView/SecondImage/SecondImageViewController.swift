//
//  SecondImageViewController.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/24.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class SecondImageViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    
    @IBOutlet weak var secondImageMainView: SecondImageMainView!
    
    var postModel: PostModel = PostModel()
    
}
// MARK: - Life cycle
extension SecondImageViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
        setDelegate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.secondImageMainView.getModel(postModel:  postModel)
        
    }
}
// MARK: - Protocol
extension SecondImageViewController {
}
extension SecondImageViewController: HeaderViewDelegate{
    func touchedLeftButton(_ sender: UIButton) {
        let topViewController = TopViewController()
        navigationController?.pushViewController(topViewController, animated: true)
        animatorManager.navigationType = .slide_pop
    }
}

// MARK: - method
extension SecondImageViewController {
    func setDelegate(){
        headerView.delegate = self
    }
    
    func setHeaderView(){
        headerView.setCenter(text: "詳細画面", fontSize: 16, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        headerView.setLeft(text: "←", fontSize: 16, color: #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1))
    }
    func getModel(postModel: PostModel){
        self.postModel = postModel
    }
}



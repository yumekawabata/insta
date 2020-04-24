//
//  TopViewController.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/21.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class TopViewController: BaseViewController{
    @IBOutlet weak var topHeaderView: HeaderView!
    @IBOutlet weak var topMainView: TopMainView!
}
// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeadeView()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getModel()
       
    }
}
// MARK: - Protocol
extension TopViewController: TopMainViewDelegate {
    func didselectRowAt() {
        let imageViewController = ImageViewController()
        navigationController?.pushViewController(imageViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}
extension TopViewController: HeaderViewDelegate{
    func touchedRightButton(_ sender: UIButton) {
        let postviewController = postViewController()
        navigationController?.pushViewController(postviewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}
// MARK: - method
extension TopViewController {
    func setDelegate(){
        topMainView.delegate = self
        topHeaderView.delegate = self
    }
    func setHeadeView(){
        topHeaderView.setRight(text: "投稿", fontSize: 16, color: #colorLiteral(red: 1, green: 0.02800271297, blue: 0.6601671013, alpha: 1))
    }
    func getModel(){
        PostModel.reads { (postModels) in
//            for postModel in postModels {
//                print("DESC: ",postModel.description)
//            }
            self.topMainView.getModel(postModels: postModels)
        }
        
    }
}



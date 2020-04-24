//
//  TopMainView.swift
//  insta
//
//  Created by ASW-研修３ on 2020/04/21.
//  Copyright © 2020 ASW-研修３. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainViewDelegate: NSObjectProtocol{
    func didselectRowAt(indexPath: IndexPath)
}
extension TopMainViewDelegate {
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var tableView: UITableView!
    
    var postModels: [PostModel] = [PostModel]()
}
// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTableViewcell")
        
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTableViewSecondCell")
    }
}
// MARK: - Protocol
extension TopMainView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TopMainTableViewcell",for: indexPath)as? TopMainTableViewcell else {return UITableViewCell()}
        
        guard let secondCell =
            tableView.dequeueReusableCell(withIdentifier: "TopMainTableViewSecondCell",for: indexPath)as? TopMainTableViewSecondCell else {return UITableViewCell()}
        secondCell.updateCell(postModel: postModels[indexPath.row])
        
        switch indexPath.row {
        case 0:
            return cell
        case 1:
            return secondCell
        default:
            return secondCell
        
        }
    }
    
}
extension TopMainView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let delegate = delegate{
            delegate.didselectRowAt(indexPath: indexPath)
        }
    }
    
}

// MARK: - method
extension TopMainView {
    func setDelegate(){
        tableView.dataSource = self
        tableView.delegate = self
    }
    func getModel(postModels: [PostModel]){
        self.postModels = postModels
        tableView.reloadData()
    }
}


//
//  NoticeViewController.swift
//  viper-architecture
//
//  Created by Jackson Matheus on 01/10/23.
//

import Foundation
import UIKit

class NoticeViewController: UIViewController {
    var presentor: ViewToPresenterProtocol
    
    
    let tableView: UITableView
    let noticeArray: Array<NoticeModel> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Notice Module"
        
        presentor.startFetchingNotice()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
    }
}

extension NoticeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NOtice
        
        
        cell.textLabel
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return noticeArray.count
    }
    
    
}

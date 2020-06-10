//
//  ViewController.swift
//  collectionViewCellTest
//
//  Created by Yuki Shinohara on 2020/06/08.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
//
        models.append(Model(text: "First", imageName: "kasumi"))
        models.append(Model(text: "Second", imageName: "hinako"))
        models.append(Model(text: "Third", imageName: "mikako"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

struct Model{
    let text:String
    let imageName:String
    init(text:String, imageName:String){
        self.text = text
        self.imageName = imageName
    }
}

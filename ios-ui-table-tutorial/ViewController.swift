//
//  ViewController.swift
//  ios-ui-table-tutorial
//
//  Created by Narongsak Chobsri on 12/16/2560 BE.
//  Copyright © 2560 Narongsak Chobsri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
    UITableViewDelegate,UITextFieldDelegate {
    
    @IBOutlet weak var mTableview:UITableView!
    var dataSource:NSMutableArray = NSMutableArray()
    var headerView:UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.frame = CGRect(x:0, y:0, width: 320, height:270)
        headerView.image = UIImage(named: "test1.png")
        let textView = UITextField(frame: CGRect(x:69, y:245, width: 182, height:30))
        textView.background = UIImage(named: "test2.png")
        textView.placeholder = "Enter your name"
        headerView.addSubview(textView)
        mTableview.tableHeaderView = headerView
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "Facelespedia ."
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


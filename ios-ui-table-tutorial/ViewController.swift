//
//  ViewController.swift
//  ios-ui-table-tutorial
//
//  Created by Narongsak Chobsri on 12/16/2560 BE.
//  Copyright © 2560 Narongsak Chobsri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
    UITableViewDelegate {
    
    @IBOutlet weak var mTableview:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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


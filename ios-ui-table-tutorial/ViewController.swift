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
        headerView.frame = CGRect(x:0, y:0, width: 320, height:300)
        headerView.image = UIImage(named: "test1.png")
        headerView.isUserInteractionEnabled = true
        let textView = UITextField(frame: CGRect(x:90, y:265, width: 182, height:30))
        textView.backgroundColor = UIColor.white
        textView.textAlignment = NSTextAlignment.center
        textView.placeholder = "Enter your name"
        textView.delegate = self
        textView.clearButtonMode = UITextFieldViewMode.always
        headerView.addSubview(textView)
        mTableview.tableHeaderView = headerView
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // hidden keyboard
        dataSource.add(textField.text!)
        print("%s", dataSource.description);
        mTableview.reloadData()
        textField.text = ""
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = self.dataSource.object(at: indexPath.row)
            as? String
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Message", message: "Thank you for calling", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Close It", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Remove It", style: UIAlertActionStyle.default, handler: { alertAction in
            
            self.dataSource.removeObject(at: indexPath.row)
            print(indexPath.row)
            self.mTableview.reloadData()
            
        }))
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


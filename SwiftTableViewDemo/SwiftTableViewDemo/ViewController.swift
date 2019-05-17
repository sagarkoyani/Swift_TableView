//
//  ViewController.swift
//  SwiftTableViewDemo
//
//  Created by Apple on 02/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class  ViewController:UIViewController,UITableViewDelegate,UITableViewDataSource {
  var array1=["aaa","bbb","ccc","ddd","eee","fff"]
    var array2=["AAA","BBB","CCC","DDD","EEE","FFF"]
    
    //var arrImages=[ImageLita]

    override func viewDidLoad() {
        super.viewDidLoad()
    array1.append("ggg")
        array2.append("GGG")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell")!
        var lbl1:UILabel=cell.viewWithTag(102) as! UILabel
           lbl1.text=array1[indexPath.row] //cell.textLabel?.text=array1[indexPath.row]
        var lbl2:UILabel=cell.viewWithTag(103) as! UILabel
        lbl2.text=array2[indexPath.row]
        //cell.detailTextLabel?.text=array2[indexPath.row]
        var imgview:UIImageView = cell.viewWithTag(101) as! UIImageView
        imgview.image=#imageLiteral(resourceName: "a6.jpg")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 107
    }
}


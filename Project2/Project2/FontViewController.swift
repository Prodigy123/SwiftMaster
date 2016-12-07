//
//  FontViewController.swift
//  Project2
//
//  Created by 吉安 on 07/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit

class FontViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        showFontTableView.delegate = self
        showFontTableView.dataSource = self
        showFontTableView.estimatedRowHeight = showFontTableView.rowHeight
        showFontTableView.rowHeight = UITableViewAutomaticDimension
        font = FontInfo.nextFont()
        showTheFont.text = "Font"
        showTheFont.font = UIFont(name: font!, size: 16)
        button.layer.cornerRadius = 60
        button.titleLabel?.font = UIFont(name: font!, size: 16)
        // Do any additional setup after loading the view.
    }
    var changeFont = 0
    var font: String?{didSet{showFontTableView.reloadData()}}
    @IBOutlet weak var showTheFont: UILabel!
    
    @IBOutlet weak var showFontTableView: UITableView!
    
    
    @IBAction func touchToChange(_ sender: UIButton) {
        font = FontInfo.nextFont()
        showTheFont.text = "Font"
        showTheFont.font = UIFont(name: font!, size: 16)
        button.titleLabel?.font = UIFont(name: font!, size: 16)
    }
    @IBOutlet weak var button: UIButton!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return FontInfo.data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = showFontTableView.dequeueReusableCell(withIdentifier: "next", for: indexPath)
        let text = FontInfo.data[indexPath.row]
        cell.textLabel?.text = text
        if let fontName = font{
        cell.textLabel?.font = UIFont(name:fontName, size: 16)
        }
        cell.textLabel?.textColor = UIColor.yellow
        return cell
    }
  
    
  
}

//
//  PlayerTableViewController.swift
//  Player
//
//  Created by 吉安 on 08/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class PlayerTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    private func  playVideo(_ index: Int?){
        let url = URL(string: Info.videoInfo[index!].url!)
        var player = AVPlayer()
        if let videoUrl = url{
            player = AVPlayer(url: videoUrl)
        }
        let playController = AVPlayerViewController()
        playController.player = player
        present(playController, animated: true){
            player.play()
        }
        
    }
    @IBAction func pushButtonToPlay(_ sender: UIButton) {
        if let fatherView = sender.superview{
            if let cell = fatherView.superview as? PlayerTableViewCell{
                if let index = self.tableView.indexPath(for: cell ){
                    playVideo(index.row)
                }
                
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Info.videoInfo.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OnlinePlay", for: indexPath)
        let info =  Info.videoInfo[indexPath.row]
        if let thisCell = cell as? PlayerTableViewCell{
            thisCell.videoName.text = info.name
            thisCell.imageName?.image = UIImage(named: info.image!)!
        }
        return cell
    }
    
}

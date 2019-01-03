//
//  TweetListCell.swift
//  Code_Challenge
//
//  Created by Cenker Demir on 1/2/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetListCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetBodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // setup labels' initial values
        self.setupLabels()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    // MARK: - Initial Setup
    func setupLabels() {
        self.userNameLabel.text = ""
        self.tweetBodyLabel.text = ""
    }
    
}

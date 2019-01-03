//
//  TweetListTableViewController.swift
//  Code_Challenge
//
//  Created by Cenker Demir on 1/2/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetListTableViewController: UITableViewController {
    
    var tweets : [Tweet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load tweets
        self.tweets = TwitterClient.shared.loadTimeline()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.tweets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tweetListCell", for: indexPath) as? TweetListCell {
            let tweet = self.tweets[indexPath.row]
            cell.userNameLabel.text = tweet.user
            cell.tweetBodyLabel.text = tweet.content
            return cell
        }
        return UITableViewCell()
    }
 
    
    // MARK: - Actions
    
    @IBAction func didTapLogout(_ sender: Any) {
        TwitterClient.shared.logOut()
    }

}

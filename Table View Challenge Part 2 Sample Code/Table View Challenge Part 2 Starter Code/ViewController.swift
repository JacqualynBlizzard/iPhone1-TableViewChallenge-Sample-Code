//
//  ViewController.swift
//  Table View Challenge Part 2 Starter Code
//
//  Created by Jacqualyn Blizzard-Caron on 1/29/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    var catVotes: Int = 0
    var dogVotes: Int = 0
    var voteDataArray: [String] = []
    
    @IBAction func catVoteButtonHandler(_ sender: Any) {
        catVotes += 1
        updateVoteArray()
        myTableView.reloadData()
    }
    
    @IBAction func dogVoteButtonHandler(_ sender: Any) {
        dogVotes += 1
        updateVoteArray()
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = voteDataArray[indexPath.row]
        return cell
    }
    
    func updateVoteArray() {
        voteDataArray = ["Cat Votes: \(catVotes) ", "Dog Votes: \(dogVotes)"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateVoteArray()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


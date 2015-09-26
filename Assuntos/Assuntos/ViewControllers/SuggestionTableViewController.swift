//
//  SuggestionTableViewController.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import UIKit

class SuggestionTableViewController: UITableViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var suggestionTitle: UITextView!
    @IBOutlet weak var suggestionDescription: UITextView!
    
    
    // MARK: - Properties
    var suggestion: Suggestion!
    var subject: Subject!
    let gateway = SubjectGateway()

    override func viewDidLoad() {
        updateInterface(self.suggestion)
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    // MARK: - Actions

    @IBAction func getOtherSuggestion(sender: AnyObject) {
        let suggestion = GetRandomSuggestionBySubjectUsecase(gateway: self.gateway).run(subject)
        updateInterface(suggestion)
    }
    
    // MARK: - Other function
    
    func updateInterface(suggestion: Suggestion) {
        suggestionTitle.text = suggestion.title
        suggestionDescription.text = suggestion.description
    }
}

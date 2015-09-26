//
//  SubjectTableViewController.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import UIKit

class SubjectTableViewController: UITableViewController {
    var subjects: [Subject] = []
    let gateway = SubjectGateway()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        subjects = GetSubjecstListUsecase(gateway: gateway).run()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("subjectCell", forIndexPath: indexPath)

        cell.textLabel?.text = subjects[indexPath.row].title

        return cell
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "openSuggestion") {
            let destinationViewController = segue.destinationViewController as! SuggestionTableViewController
            let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)
            let subject = self.subjects[(indexPath?.row)!]
            let suggestion = GetRandomSuggestionBySubjectUsecase(gateway: self.gateway).run(subject)
            destinationViewController.suggestion = suggestion
        }
    }

}

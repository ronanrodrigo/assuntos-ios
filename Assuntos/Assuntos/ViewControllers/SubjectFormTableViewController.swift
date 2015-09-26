//
//  SubjectFormTableViewController.swift
//  Assuntos
//
//  Created by Ronan Rodrigo Nunes on 26/09/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import UIKit

class SubjectFormTableViewController: UITableViewController {
    var usecase: AddSubjectUsecase!
    @IBOutlet weak var subjectTitle: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func SaveSubject(sender: AnyObject) {
        let subject = Subject(title: subjectTitle.text!)
        self.usecase.run(subject)
        self.navigationController?.popViewControllerAnimated(true)
    }
}

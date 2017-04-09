//
//  NameListViewController.swift
//
//
//  Created by nicholaslee on 07/04/2017.
//
//

import UIKit
import FirebaseDatabase

enum Section:Int {
    case createNewNameSection = 0
    case currentNamesSection
    
}


class NameListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Properties
    var senderDisplayName: String?
    var newNameTextField: UITextField?
    var names : [Name] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    
    
    
}


extension NameListViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let currentSection: Section = Section(rawValue: section) {
            
            switch currentSection {
            case .createNewNameSection:
                return 1
            case .currentNamesSection:
                return names.count
            }
        }else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = (indexPath as NSIndexPath).section == Section.createNewNameSection.rawValue "NewName" : "ExistingName"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for:indexPath)
        
        if(indexPath).section == Section.createNewNameSection.rawValue {
            if let createNewNameCell = cell as? CreateNameCell {
                newNameTextField = createNewNameCell.createNameTextField
            }
        }else if (indexPath).section == Section.currentNamesSection.rawValue {
            cell.textLabel?.text = names[indexPath.row.name]
        
        }
    }
    
    
    
    
}



































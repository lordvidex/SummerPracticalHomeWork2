//
//  ContactDetailsViewController.swift
//  Assignment2
//
//  Created by Evans Owamoyo on 02.07.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    var contact: Contact?
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contact = contact {
            fullNameLabel.text = "\(contact.name) \(contact.surname)"
            initialsLabel.text = "\(getUppercaseFirstLetter(of: contact.name))\(getUppercaseFirstLetter(of: contact.surname))"
            let table = self.children[0] as? DetailsTableViewController
            table?.contact = contact
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func getUppercaseFirstLetter(of string: String) -> Character {
        return string.uppercased().first!
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIView {

    @IBInspectable var cornerRadiusV: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}

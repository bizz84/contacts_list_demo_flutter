//
//  ViewController.swift
//  contactsListDemoIOS
//
//  Created by Andrea Bizzotto on 08/12/2018.
//  Copyright © 2018 codingwithflutter. All rights reserved.
//

import UIKit

struct Contact {
  let name: String
  let email: String
}

class ContactTileAvatar: UIView {
  @IBOutlet var label: UILabel!
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layer.cornerRadius = frame.size.width / 2.0
  }
  
  var name: String? {
    didSet {
      if let name = name, name.count > 0 {
        label.text = String(name.prefix(1))
      }
    }
  }
}

class ContactCell: UITableViewCell {
  @IBOutlet var leading: ContactTileAvatar!
  @IBOutlet var title: UILabel!
  @IBOutlet var subtitle: UILabel!
  var contact: Contact? {
    didSet {
      title.text = contact?.name
      subtitle.text = contact?.email
      leading.name = contact?.name
    }
  }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return allContacts.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as? ContactCell else {
      fatalError("cell not registered")
    }
    cell.contact = allContacts[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 73.0
  }
}

let allContacts = [
  Contact(name: "Isa Tusa", email: "isa.tusa@me.com"),
  Contact(name: "Racquel Ricciardi", email: "racquel.ricciardi@me.com"),
  Contact(name: "Teresita Mccubbin", email: "teresita.mccubbin@me.com"),
  Contact(name: "Rhoda Hassinger", email: "rhoda.hassinger@me.com"),
  Contact(name: "Carson Cupps", email: "carson.cupps@me.com"),
  Contact(name: "Devora Nantz", email: "devora.nantz@me.com"),
  Contact(name: "Tyisha Primus", email: "tyisha.primus@me.com"),
  Contact(name: "Muriel Lewellyn", email: "muriel.lewellyn@me.com"),
  Contact(name: "Hunter Giraud", email: "hunter.giraud@me.com"),
]


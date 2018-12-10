import 'package:flutter/material.dart';

class Contact {
  Contact({this.name, this.email});
  final String name;
  final String email;
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({this.title = ''});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      backgroundColor: Color(0xFFF9F9F9),
      elevation: 0.0,
      bottom: PreferredSize(
        child: Divider(height: 0.5, color: Colors.black26),
        preferredSize: Size(double.infinity, 0.5),
      ),
    );
  }
  Size get preferredSize => Size.fromHeight(44.0);
}

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'List'),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      itemCount: allContacts.length,
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Divider(height: 0.5, color: Colors.black26),
        );
      },
      itemBuilder: (content, index) {
        Contact contact = allContacts[index];
        return ContactListTile(contact);
      },
    );
  }
}

class ContactListTile extends ListTile {
  ContactListTile(Contact contact)
      : super(
    title: Text(contact.name),
    subtitle: Text(contact.email),
    leading: CircleAvatar(child: Text(contact.name[0])),
  );
}

List<Contact> allContacts = [
  Contact(name: 'Isa Tusa', email: 'isa.tusa@me.com'),
  Contact(name: 'Racquel Ricciardi', email: 'racquel.ricciardi@me.com'),
  Contact(name: 'Teresita Mccubbin', email: 'teresita.mccubbin@me.com'),
  Contact(name: 'Rhoda Hassinger', email: 'rhoda.hassinger@me.com'),
  Contact(name: 'Carson Cupps', email: 'carson.cupps@me.com'),
  Contact(name: 'Devora Nantz', email: 'devora.nantz@me.com'),
  Contact(name: 'Tyisha Primus', email: 'tyisha.primus@me.com'),
  Contact(name: 'Muriel Lewellyn', email: 'muriel.lewellyn@me.com'),
  Contact(name: 'Hunter Giraud', email: 'hunter.giraud@me.com'),
];

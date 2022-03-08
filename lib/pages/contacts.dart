import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class Contactes extends StatefulWidget {
  @override
  _Contactes createState() => _Contactes();
}

class _Contactes extends State<Contactes> {
  List<Contact>? _contacts = [];
  bool _permissionDenied = false;
  List<Contact> contacts = [];

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      if (_contacts!.length == 0) {
        contacts = await FlutterContacts.getContacts();
      }
      setState(() => _contacts = contacts);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_permissionDenied) return Center(child: Text('Permission denied'));
    if (_contacts == null) return Center(child: CircularProgressIndicator());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: Icon(
                Icons.school,
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text("Vos Contacts")
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: _contacts!.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(_contacts![i].displayName),
          onTap: () async {
            final fullContact =
                await FlutterContacts.getContact(_contacts![i].id);
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ContactPage(fullContact!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  final Contact contact;
  ContactPage(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(contact.displayName)),
      body: Column(
        children: [
          Text('First name: ${contact.name.first}'),
          Text('Last name: ${contact.name.last}'),
          Text(
              'Phone number: ${contact.phones.isNotEmpty ? contact.phones.first.number : '(none)'}'),
          Text(
              'Email address: ${contact.emails.isNotEmpty ? contact.emails.first.address : '(none)'}'),
        ],
      ),
    );
  }
}
